puts "Destroying all data"

Review.destroy_all
Booking.destroy_all
Ute.destroy_all
User.destroy_all

puts "All data destroyed..."

puts "----------------------------"

puts "seeding..."

bob = User.create!(
  first_name: "bob",
  last_name: "sponge",
  email: "bob@gmail.com",
  password: "bob123"
)

john = User.create!(
  first_name: "john",
  last_name: "doe",
  email: "john@gmail.com",
  password: "john123"
)

User.create!(
  first_name: "steve",
  last_name: "jobs",
  email: "steve@gmail.com",
  password: "steve123"
)

Ute.create!(
  model: "NSW Sandman",
  year: 2023,
  location: "Melbourne, Australia",
  details: "Classic Orange Cruiser - Manual AWD",
  image_url: "https://live.staticflickr.com/1927/45562444102_f9cedb67bc_b.jpg",
  availability: true,
  price: 340,
  user: bob
)

Ute.create!(
  model: "Holden Ute SS VE Auto",
  year: 2023,
  location: "Perth, Australia",
  details: "AMAS Rock and Rescue",
  image_url: "https://i0.wp.com/lamleygroup.com/wp-content/uploads/2012/06/img_6333.jpg",
  availability: true,
  price: 777,
  user: bob
)

Ute.create!(
  model: "Green Machine",
  year: 2019,
  location: "Cudgen NSW, Australia",
  details: "5000 HP Absolute Beast",
  image_url: "https://w0.peakpx.com/wallpaper/359/260/HD-wallpaper-holden-ve-ute-windows.jpg",
  availability: true,
  price: 420,
  user: bob
)

Ute.create!(
  model: "Ute Racing Pro",
  year: 2021,
  location: "richmond, melbourne, Australia",
  details: "Check out the robot joey",
  image_url: "https://i.ytimg.com/vi/jm_R9zkE0mM/maxresdefault.jpg",
  availability: true,
  price: 600,
  user: bob
)

Ute.create!(
  model: "Cyber Ute",
  year: 2023,
  location: "Dubbo, NSW, Australia",
  details: "Elon Musk firing machine gun at Cyber Ute with bullet proof glass🤣",
  image_url: "https://s1.cdn.autoevolution.com/images/news/elon-musk-suggesting-the-cybertruck-is-bulletproof-is-reckless-and-nothing-new-223201_1.jpg",
  availability: true,
  price: 9999,
  user: john
)

Ute.create!(
  model: "Ute-ility Ute",
  year: 2010,
  location: "Bondi Beach, Sydney, Australia",
  details: "For all your project needs",
  image_url: "https://static0.topspeedimages.com/wordpress/wp-content/uploads/jpg/200710/2008-hsv-maloo-r8-ute-5.jpg",
  availability: true,
  price: 50,
  user: john
)

Ute.create!(
  model: "Turbo-Goat!",
  year: 2199,
  location: "St. Kilda, Melbourne, Australia",
  details: "The futre of Goat transportation is in the back of a Ute!",
  image_url: "https://res-console.cloudinary.com/dajwhai3n/thumbnails/v1/image/upload/v1717740921/VHVyYm9Hb2F0c19nbWswdng=/drilldown",
  availability: true,
  price: 99,
  user: john
)

Ute.create!(
  model: "Yeti Ute",
  year: 1958,
  location: "Bic, Quebec, Canada",
  details: "The perfect vehicle for maple syrup runs",
  image_url: "https://moniquesong.com/wp-content/uploads/2021/01/Toyota-Tacoma-Landcruiser-snow-wheeling-5-scaled.jpg",
  availability: true,
  price: 30,
  user: john
)

ute6 = Ute.create!(
  model: "Over-Modded Nissan Ute",
  year: 2013,
  location: "Auckland, New Zealand",
  details: "Yooo this ute is sick as bro. Mean as.",
  image_url: "https://www.sscustomsqld.com.au/cdn/shop/files/rn-image_picker_lib_temp_1024d631-4778-4489-8307-04e0ea9d15e2.jpg?v=1700813222",
  availability: true,
  price: 420,
  user: User.first
)

puts "users and utes created!"
