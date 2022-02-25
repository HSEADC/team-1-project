class AddUserRefToProfiles < ActiveRecord::Migration[6.1]
  def change
    # add_reference :profiles, :user, null: false, foreign_key: true
    add_reference :users, :profile, null: true, foreign_key: true

    add_reference :chat_list_items, :user, foreign_key: true
    # # хз тут ↓
    add_reference :chat_list_items, :chat, foreign_key: true

    add_reference :messages, :user, null: false, foreign_key: true
    add_reference :messages, :chat, null: false, foreign_key: true

    add_reference :message_statuses, :message, null: false, foreign_key: true
    add_reference :message_statuses, :user, null: false, foreign_key: true

    add_reference :favourites, :profiles, null: true, foreign_key: true
    add_reference :favourites, :users, null: false, foreign_key: true
  end
end
