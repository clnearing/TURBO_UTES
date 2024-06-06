require "faker"

puts "seeding..."

bob = User.create(
  first_name: "bob",
  last_name: "sponge",
  email: "bob@gmail.com",
  password: "bob123"
)

bob.save

john = User.create(
  first_name: "john",
  last_name: "doe",
  email: "john@gmail.com",
  password: "john123"
)

john.save

steve = User.create(
  first_name: "steve",
  last_name: "jobs",
  email: "steve@gmail.com",
  password: "steve123"
)

steve.save

10.times {
  ute = Ute.create(
  model: Faker::Vehicle.make,
  year: Faker::Vehicle.year,
  location: Faker::Address.street_name + ', ' + Faker::Address.city,
  details: Faker::Vehicle.transmission + ', ' + Faker::Vehicle.drive_type,
  image_url: Faker::LoremFlickr.image(search_terms: ['pickup']) + "?random=#{rand(10000)}",
  availability: true,
  price: rand(20..500),
  user_id: 1
  )
  ute.save!
}

puts "users and utes created!"
