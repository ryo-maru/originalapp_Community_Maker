class MembersController < ApplicationController

  def index
    @member = current_user.members
  end

  def create
    member = current_user.members.create(community_id: params[:community_id])
    redirect_to communities_path, notice: "#{member.community.user.name}さんのコミュニティに参加しました"
  end
  def destroy
    member = current_user.members.find_by(id: params[:id]).destroy
    redirect_to communities_path, notice: "#{member.community.user.name}さんのコミュニティを退会しました"
  end

end
