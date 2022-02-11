# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def seed
  reset_db
  create_users
  create_chats
  create_messages
end

def reset_db
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke
end

def create_users
  50 times do
    user = User.create!
    puts "User created with id #{user.id}"
  end
end

def create_chats
  10 times do
    users = User.all.sample(2)
    chat = Chat.create!
    users[0].user_chats.create!(chat_id: chat.id)
    users[1].user_chats.create!(chat_id: chat.id)
  end
end

def create_messages
  chats = Chat.all
  chats.each do |chat|
    chat_users = chat.users
    message = chat.messages.create!(user_id: user.id, body: 'u up?')
  end
end


# User.all.sample   ---  random user

# profile = Profile.create!(user_id: user.id)
#puts "User created with id #{user.id}, their profile id is #{user.profile.id}"
seed
