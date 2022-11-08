require 'faker'

User.delete_all
Event.delete_all

5.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.famous_last_words, email: Faker::Internet.email, password: "111111",password_confirmation: "111111")
end

5.times do
  Event.create(start_date: Time.now,duration: Faker::Number.between(from: 1, to: 10), title: Faker::Name.name , description: Faker::Lorem.sentence(word_count: 10), price: Faker::Number.between(from: 5, to: 50), location: Faker::Address.city, user_id: User.all.sample.id)
end
#start_date: Faker::Date.between(from: '2022-11-00', to: '2022-11-30'),