# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
<<<<<<< HEAD

Ute.create(model:"commodore", year:"2004", location:"melbourne,vic", details:"very good ute", image_url:"", price:10000)
=======
puts "seeding..."

User.create(
  first_name: "bob",
  last_name: "sponge",
  email: "bob@gmail.com",
  password: "bob123"
)

puts "user created"
>>>>>>> 347cae44e42cd1b288689ee2a7727362a9831d90
