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

ute1 = Ute.create(
  model: "Toyota Hilux",
  year: 2023,
  location: "Melbourne, Australia",
  details: "Manual AWD",
  image_url: "https://cdn.motor1.com/images/mgl/AkgyVW/s1/toyota-hilux-bev-pickup.jpg",
  availability: true,
  price: 340,
  user_id: 1
)

ute2 = Ute.create(
  model: "Holden Ute SS VE Auto",
  year: 2010,
  location: "Ho Chi Minh Cty, Vietnam",
  details: "Biggest Turbo Ever - Also know as the Green Machine",
  image_url: "https://findmecars.com.au/wp-content/uploads/2017/08/untitled-8.jpg",
  availability: true,
  price: 777,
  user_id: 1
)

ute3 = Ute.create(
  model: "Ram 1500 DT",
  year: 2019,
  location: "Farm & Co, 529 Cudgen Rd, Cudgen NSW 2487",
  details: "5000 HP Absolute Beast",
  image_url: "https://res.cloudinary.com/driveau/images/v1/cms/uploads/jrmly9aladh5yhlmbo6w/jrmly9aladh5yhlmbo6w.jpg",
  availability: true,
  price: 420,
  user_id: 1
)

ute4 = Ute.create(
  model: "Toyota Land Cruiser",
  year: 2021,
  location: "Le Wagon, Richmond, Melbourne",
  details: "V8 TURBO Diesel Dual Cab",
  image_url: "https://www.4-wheeling-in-western-australia.com/images/Sunset-Cruiser.jpg",
  availability: true,
  price: 600,
  user_id: 1
)

ute5 = Ute.create(
  model: "Cyber Truck",
  year: 2023,
  location: "Austin, Texas, United States",
  details: "Elon Musk firing machine gun at Cyber Truck",
  image_url: "https://s1.cdn.autoevolution.com/images/news/elon-musk-suggesting-the-cybertruck-is-bulletproof-is-reckless-and-nothing-new-223201_1.jpg",
  availability: true,
  price: 9999,
  user_id: 1
)

ute6 = Ute.create(
  model: "Ford Police Ute",
  year: 2010,
  location: "Bondi Beach, Sydney, Australia",
  details: "Police ute that tries to catch speeding turbo utes",
  image_url: "https://lexipol.brightspotcdn.com/dims4/default/5611e2a/2147483647/strip/true/crop/4279x2409+0+232/resize/1000x563!/quality/90/?url=https%3A%2F%2Fk1-prod-lexipol.s3.us-east-2.amazonaws.com%2Fbrightspot%2F68%2F6f%2F6b242cbb4f25a043236bd7024dc4%2Fford-pro-f150-police-responder-61620.jpg",
  availability: true,
  price: 50,
  user_id: 1
)

ute1.save!
ute2.save!
ute3.save!
ute4.save!
ute5.save!
ute6.save!

puts "users and utes created!"
