class AddUsersRefToCommunities < ActiveRecord::Migration[5.2]
  def change
    add_reference :communities, :user, foreign_key: true
  end
end
