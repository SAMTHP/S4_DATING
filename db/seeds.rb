require 'faker'

100.times do
  celib = Celib.create!
end

100.times do
  man_user = ManUser.create!(first_name: Faker::Hobbit.character,last_name: Faker::Hobbit.character, detail: Faker::HowIMetYourMother.quote, pseudo: Faker::Superhero.prefix, email: Faker::Internet.email,  celib_id: rand(1..100))
end

100.times do
 woman_user = WomanUser.create!(first_name: Faker::Hobbit.character,last_name: Faker::Hobbit.character, detail: Faker::HowIMetYourMother.quote, pseudo: Faker::Superhero.prefix, email: Faker::Internet.email,  celib_id: rand(1..100))
end

100.times do
 no = NegativeAcceptance.create!(man_user_id: rand(1..10), woman_user_id: rand(1..10))
end

100.times do
 yes = PositiveAcceptance.create!(man_user_id: rand(1..10), woman_user_id: rand(1..10))
end

100.times do
  conversation = Conversation.create!
end

100.times do
 particip = Participate.create!(positive_acceptance_id: rand(1..10), conversation_id: rand(1..100))
end

100.times do
  message = Message.create!(subject: Faker::NewGirl.character, content: Faker::NewGirl.quote, conversation_id: rand(1..100))
end

100.times do
  man_picture = ManPhoto.create!(url: Faker::Internet.url('example.com') , description: Faker::NewGirl.quote, man_user_id: rand(1..100))
end

100.times do
  woman_picture = WomanPhoto.create!(url: Faker::Internet.url('example.com') , description: Faker::NewGirl.quote, woman_user_id: rand(1..100))
end


