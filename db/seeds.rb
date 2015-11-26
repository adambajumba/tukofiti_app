User.create!(name: "Rails User",
	email: "example@example.com",
	password:
	"rails4fun",
	password_confirmation: "rails4fun",
	admin: true,
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