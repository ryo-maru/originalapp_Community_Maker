class AddColumnsToCommunities < ActiveRecord::Migration[5.2]
  def change
    add_column :communities, :image, :string
    add_column :communities, :admin_id, :integer
  end
end
