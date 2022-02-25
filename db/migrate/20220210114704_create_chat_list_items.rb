class CreateChatListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :chat_list_items do |t|

      t.timestamps
    end
  end
end
