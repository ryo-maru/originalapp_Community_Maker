module CommunitiesHelper
  def choose_new_or_edit
    if action_name == 'new'|| action_name == 'create'
      confirm_communities_path
    elsif action_name == 'edit'
      community_path
    end
  end
end
