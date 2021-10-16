class AddImageIdToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :profile_image_id, :string
  end
end
