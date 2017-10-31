require 'faker'

5.times do
	user = User.new(name: Faker::HarryPotter.character, password: "password")
	user.email = Faker::Internet.safe_email(user.name)
	user.save
end

10.times do
	Post.create(user_id: rand(1..5), title: Faker::Ancient.primordial, body: Faker::HarryPotter.quote)
end

20.times do
	Comment.create(name: Faker::Ancient.god, body: Faker::RickAndMorty.quote, post_id: rand(1..10))

end