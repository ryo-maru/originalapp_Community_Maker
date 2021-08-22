class CommunitiesController < ApplicationController
  before_action :set_community, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_q, only: [:index, :search]
  before_action :correct_user, only: [:edit, :update]
  before_action :limits_of_show, only: [:edit, :update, :show]


  # GET /communities or /communities.json
  def index
    @communities = Community.page(params[:page]).per(10)
  end

  # GET /communities/1 or /communities/1.json
  def show
    @comments = @community.comments
    @comment = @community.comments.build
    @favorite = current_user.favorites.find_by(community_id: @community.id)
    @member = current_user.members.find_by(community_id: @community.id)
  end

  # GET /communities/new
  def new
    @community = Community.new
  end

  # GET /communities/1/edit
  def edit
  end

  # POST /communities or /communities.json
  def create
    @community = Community.new(community_params)
    respond_to do |format|
      if @community.save
        CommunityMailer.community_mail(@community).deliver  ##追記
        format.html { redirect_to communities_path, notice: "コミュニティを作成しました" }
        format.json { render :show, status: :created, location: @community }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @community.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /communities/1 or /communities/1.json
  def update
    respond_to do |format|
      if @community.update(community_params)
        format.html { redirect_to @community, notice: "コミュニティを編集しました" }
        format.json { render :show, status: :ok, location: @community }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @community.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communities/1 or /communities/1.json
  def destroy
    @community.destroy
    respond_to do |format|
      format.html { redirect_to communities_url, notice: "コミュニティを削除しました" }
      format.json { head :no_content }
    end
  end

  def confirm
    @community = Community.new(community_params)
    render :new if @community.invalid?
  end

  def search
    @results = @q.result
    #@results = @results.page(params[:page]).per(5)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community
      @community = Community.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def community_params
      params.require(:community).permit(:name, :description, :user_id, :user_name).merge(user_id: current_user.id)
    end

    def set_q
      @q = Community.ransack(params[:q])
    end

    def correct_user
      @community = current_user.communities.find_by(id: params[:id])
     unless @community
       redirect_to root_url
     end
    end

    def limits_of_show
      if @community.comments.count <= 30
      unless current_user.admin? || user_signed_in?
        redirect_to root_url
      end
    end
  end
end
