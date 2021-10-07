class AddCustomerIdToUserRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :user_rooms, :customer_id, :integer
  end
end
