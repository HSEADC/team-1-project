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
  create_profiles
  # create_favourites
end

def reset_db
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke
end

def create_users
  # i = 1
  # 10.times do
  #   user_data = {
  #     email: "user#{i}@email.com",
  #     password: "testtest"
  #   }
  #   if i == 1
  #      user_data[:admin] = true
  #   end
  #   user = User.create!(user_data)
  #   puts "User created with id #{user.id}"
  #   i += 1
  # end

  @vitaly = User.create!(email: "vitaly@email.com", password: "testtest", admin: true)
  @mila = User.create!(email: "mila@email.com", password: "testtest", admin: true)
  @eva = User.create!(email: "eva@email.com", password: "testtest", admin: true)
end

def create_profiles
  vitaly_profile = Profile.create!(user_id: @vitaly.id,
                                    name: "Виталий",
                                    age: 20,
                                    visibility: true,
                                    gender: "He/him",
                                    destination_city: "Санкт-Петербург",
                                    interests: ["Дизайн", "Искусство"],
                                    tidiness: 9,
                                    smoking: true,
                                    instagram_link: "http://instagram.com/vitasiempre")
  vitaly_profile.avatar.attach(io: File.open('app/assets/images/vitaly.jpg'), filename: "vitaly.jpg")
  mila_profile = Profile.create!(user_id: @mila.id,
                                    name: "Мила",
                                    age: 20,
                                    visibility: true,
                                    gender: "She/her",
                                    destination_city: "Москва",
                                    interests: ["Дизайн", "Искусство"],
                                    tidiness: 9,
                                    smoking: false,
                                    instagram_link: "http://instagram.com/jethappiness")
  mila_profile.avatar.attach(io: File.open('app/assets/images/mila.jpg'), filename: "vitaly.jpg")
  eva_profile = Profile.create!(user_id: @eva.id,
                                    name: "Ева",
                                    age: 20,
                                    visibility: true,
                                    gender: "She/her",
                                    destination_city: "Москва",
                                    interests: ["Дизайн", "Искусство"],
                                    tidiness: 9,
                                    smoking: false,
                                    instagram_link: "http://instagram.com/jethappiness")
eva_profile.avatar.attach(io: File.open('app/assets/images/eva.jpg'), filename: "vitaly.jpg")
end

def create_chats
  10.times do
    users = User.all.sample(2)
    chat = Chat.create!
    users[0].chat_list_items.create!(chat_id: chat.id)
    users[1].chat_list_items.create!(chat_id: chat.id)
    # puts "Chat created with id #{chat.id}, users #{chat.users.ids}, chat list items #{chat.chat_list_items.ids}"
  end
end

def create_messages
  chats = Chat.all
  chats.each do |chat|
    chat_users = chat.users
    10.times do
      message_one = chat.messages.create!(body: 'u up?', user_id: chat_users[0].id)
      message_two = chat.messages.create!(body: 'yup', user_id: chat_users[1].id)
      status_one = MessageStatus.create!(message_id: message_one.id, user_id: chat_users[0].id, status: 0)
      status_two = MessageStatus.create!(message_id: message_two.id, user_id: chat_users[0].id, status: 1)

      # puts "Message #{message_one.id} #{message_one.body} sent by user #{message_one.user.id} to chat #{message_one.chat.id}. Status #{status_one.status}"
    end
  end
end

def create_favourites
  3.times do
    users = User.all.sample(2)
    profile = users[1].profile
    users[0].favourites.create!(profile_id: profile.id)
    followed = users[0].saved_profiles.target[0].profile_id
    # followed = users[0].favourites.target[0].profiles_id

    puts "User #{users[0].id} added user #{followed} to their favs"
  end
end



seed
