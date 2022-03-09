class Profile < ApplicationRecord
  belongs_to :user
  has_many :favourites
  # has_many :saved_by_users, :through => :favourites, class_name: "User", foreign_key: :user_id
  has_many :saved_by_users, :through => :favourites, class_name: "User", source: :user, foreign_key: :user_id
  has_one_attached :avatar
  has_many_attached :images
end
