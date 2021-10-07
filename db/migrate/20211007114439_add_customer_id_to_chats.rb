class AddCustomerIdToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :customer_id, :integer
  end
end
