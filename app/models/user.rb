class User < ApplicationRecord
  has_one :profile

  has_many :chat_list_items
  has_many :chats, :through => :chat_list_items

  has_many :favourites
  has_many :saved_profiles, :through => :favourites, class_name: "Profile", foreign_key: :profile_id

  has_many :messages

  has_many :blocker_users
  has_many :blocked_users
end
