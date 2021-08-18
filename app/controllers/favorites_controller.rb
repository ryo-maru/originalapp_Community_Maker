class FavoritesController < ApplicationController

  def index
    @favorite = current_user.favorites
  end


  def create
    favorite = current_user.favorites.create(community_id: params[:community_id])
    redirect_to communities_path, notice: "#{favorite.community.user.name}さんのコミュニティにいいねしました"
  end
  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to communities_path, notice: "#{favorite.community.user.name}さんのコミュニティのいいねを解除しました"
  end

end
