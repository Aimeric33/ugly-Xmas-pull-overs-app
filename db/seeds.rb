# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'creation of users 😊'

User.create!(
  first_name: "Charlène",
  last_name: "Nicol",
  email: 'chrln.nicol@gmail.com',
  password: 'azerty'
)

puts '1 new user'

User.create!(
  first_name: "Antoine",
  last_name: "Berson",
  email: 'antoine.berson01@gmail.com',
  password: 'azerty'
)

puts '1 new user'

User.create!(
  first_name: "Aimeric",
  last_name: "Marchau",
  email: 'marchauaimeric@gmail.com',
  password: 'azerty'
)

puts '1 new user'

User.create!(
  first_name: "Georgy",
  last_name: "Ryssen",
  email: 'georges.ryssen@gmail.com',
  password: 'azerty'
)

puts '1 new user'

puts 'users created 🔥'
puts '___________________________'
puts 'creation of pulls 😊'

Pull.create!(
  title: "Georges's pull",
  description: "it's a beautiful one",
  available: false,
  size: "XL",
  price: 42
)

puts '1 new pull'

Pull.create!(
  title: "Antoine's pull",
  description: "it's a beautiful one",
  available: true,
  size: "L",
  price: 56
)

puts '1 new pull'

Pull.create!(
  title: "Charlene's pull",
  description: "it's a beautiful one",
  available: true,
  size: "XS",
  price: 36
)

puts '1 new pull'

Pull.create!(
  title: "Aimeric's pull",
  description: "it's a beautiful one",
  available: true,
  size: "S",
  price: 39
)

puts '1 new pull'

puts 'pulls created 🔥'
puts '___________________________'

puts 'creation of bookings 😊'

Booking.create!(
  start_date: DateTime.new(2022, 11, 10),
  end_date: DateTime.new(2022, 12, 31),
  user_id: 1,
  pull_id: 4
)

puts '1 new booking'

Booking.create!(
  start_date: DateTime.new(2022, 12, 12),
  end_date: DateTime.new(2023, 2, 15),
  user_id: 2,
  pull_id: 3
)

puts '1 new booking'

Booking.create!(
  start_date: DateTime.new(2022, 12, 23),
  end_date: DateTime.new(2023, 1, 17),
  user_id: 3,
  pull_id: 2
)

puts '1 new booking'

Booking.create!(
  start_date: DateTime.new(2023, 12, 13),
  end_date: DateTime.new(2024, 1, 17),
  user_id: 4,
  pull_id: 1
)

puts '1 new booking'

puts 'pulls created 🔥'
puts '___________________________'
