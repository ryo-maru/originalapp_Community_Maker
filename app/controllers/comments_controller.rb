class CommentsController < ApplicationController
  before_action :set_community, only: [:create, :edit, :update]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  def index
  @Comments = Comment.page(params[:page]).per(10)
  end

  def create
    # Blogをパラメータの値から探し出し,Blogに紐づくcommentsとしてbuildします。
    @community = Community.find(params[:community_id])
    @comment = @community.comments.build(comment_params)
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save
        format.html { redirect_to community_path(@community) }
      else
        format.html { redirect_to community_path(@community), notice: '投稿できませんでした...' }
      end
    end
  end

  def edit
    @comment = @community.comments.find(params[:id])
    respond_to do |format|
      flash.now[:notice] = 'コメントの編集中'
      format.js { render :edit }
    end
  end
  def update
    @comment = @community.comments.find(params[:id])
      respond_to do |format|
        if @comment.update(comment_params)
          flash.now[:notice] = 'コメントが編集されました'
          format.js { render :index }
        else
          flash.now[:notice] = 'コメントの編集に失敗しました'
          format.js { render :edit_error }
        end
      end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      flash.now[:notice] = 'コメントが削除されました'
      format.js { render :index }
    end
  end

  private
  # ストロングパラメーター
  def comment_params
    params.require(:comment).permit(:community_id, :content, :user_id, :user_name, :name, :description).merge(user_id: current_user.id)
  end

  def set_community
    @community = Community.find(params[:community_id])
  end
end
