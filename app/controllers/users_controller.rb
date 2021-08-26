class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update]
  before_action :ensure_current_user, {only: [:edit, :update]}

  def index
    @users = User.page(params[:page]).per(20)
  end


  def show
    @user = User.find(params[:id])
  end

  def edit
    if @current_user.id == params[:id].to_i
    @user = User.find(params[:id])
    else
      flash[:notice]="権限がありません"
      redirect_to("/posts/index")
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "マイページを編集しました" }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def image
    @users = User.where(user_id: current_user.id).where.not(image: nil)
  end






  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
  params.require(:user).permit(:name, :email, :image, :image_cache, :description)
  end



end
