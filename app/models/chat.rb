class Chat < ApplicationRecord
  belongs_to :chatlist
  has_many :users, :through => :chatlist
  has_many :messages
end
