class RenameRoomIdColumnToChats < ActiveRecord::Migration[5.2]
  def change
    rename_column :chats, :user_id, :admin_id
  end
end
