class CreateChatRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_rooms do |t|
      t.integer :customer_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end
