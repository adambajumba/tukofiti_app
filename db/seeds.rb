User.create!(name: "Example User",
	email:   "user1@gmail.com",
	password: "password",
	password_confirmation: "password",
	# admin: true,
	activated: true,
	activated_at: Time.zone.now)
99.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@gmail.com"
	password = "password"
	User.create!(name: name,
		email: email,
		password: password,
		password_confirmation: password,
		activated: true,
		activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
5.times do
	content = Faker::Lorem.sentence(5)
	users.each { |user| user.posts.create!(content: content) }
end