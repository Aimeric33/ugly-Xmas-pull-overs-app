# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts 'db clean'
User.destroy_all
puts 'creation of users 😊'

charlene = User.create!(
  first_name: "Charlene",
  last_name: "Nicol",
  email: 'charln.nicol@gmail.com',
  password: 'azerty'
)

puts '1 new user'

antoine = User.create!(
  first_name: "Antoine",
  last_name: "Berson",
  email: 'antoine.berson01@gmail.com',
  password: 'azerty'
)

puts '1 new user'

aimeric = User.create!(
  first_name: "Aimeric",
  last_name: "Marchau",
  email: 'marchauaimeric@gmail.com',
  password: 'azerty'
)

puts '1 new user'

georges = User.create!(
  first_name: "Georgy",
  last_name: "Ryssen",
  email: 'georges.ryssen@gmail.com',
  password: 'azerty'
)

puts '1 new user'

puts 'users created 🔥'
puts '___________________________'
puts 'creation of pulls 😊'

file_gr = URI.open("https://res.cloudinary.com/dey9mpa39/image/upload/v1669198426/georgy_ope6kg.png")

georges_pull = Pull.new(
  user: georges,
  title: "Georges's pull",
  description: "it's a beautiful one",
  available: false,
  size: "XL",
  price: 42
)

georges_pull.photo.attach(io: file_gr, filename: "georgy.png", content_type: "image/png")
georges_pull.save

puts '1 new pull'

file_ab = URI.open("https://res.cloudinary.com/dey9mpa39/image/upload/v1669198426/antoine_qpnymz.png")

antoine_pull = Pull.new(
  user: antoine,
  title: "Antoine's pull",
  description: "it's a beautiful one",
  available: true,
  size: "L",
  price: 56
)

antoine_pull.photo.attach(io: file_ab, filename: "antoine.png", content_type: "image/png")
antoine_pull.save

puts '1 new pull'

file_cn = URI.open("https://res.cloudinary.com/dey9mpa39/image/upload/v1669198426/charlene_x1yttm.png")

charlene_pull = Pull.new(
  user: charlene,
  title: "Charlene's pull",
  description: "it's a beautiful one",
  available: true,
  size: "XS",
  price: 36
)

charlene_pull.photo.attach(io: file_cn, filename: "charlene.png", content_type: "image/png")
charlene_pull.save

puts '1 new pull'

file_am = URI.open("https://res.cloudinary.com/dey9mpa39/image/upload/v1669198426/aimeric_kyoe3w.png")

aimeric_pull = Pull.new(
  user: aimeric,
  title: "Aimeric's pull",
  description: "it's a beautiful one",
  available: true,
  size: "S",
  price: 39
)

aimeric_pull.photo.attach(io: file_am, filename: "aimeric.png", content_type: "image/png")
aimeric_pull.save

puts '1 new pull'

puts 'pulls created 🔥'
puts '___________________________'

puts 'creation of bookings 😊'

Booking.create!(
  start_date: DateTime.new(2022, 11, 10),
  end_date: DateTime.new(2022, 12, 31),
  user: aimeric,
  pull: antoine_pull
)

puts '1 new booking'

Booking.create!(
  start_date: DateTime.new(2022, 12, 12),
  end_date: DateTime.new(2023, 2, 15),
  user: georges,
  pull: charlene_pull
)

puts '1 new booking'

Booking.create!(
  start_date: DateTime.new(2022, 12, 23),
  end_date: DateTime.new(2023, 1, 17),
  user: charlene,
  pull: georges_pull
)

puts '1 new booking'

Booking.create!(
  start_date: DateTime.new(2023, 12, 13),
  end_date: DateTime.new(2024, 1, 17),
  user: antoine,
  pull: aimeric_pull
)

puts '1 new booking'

puts 'bookings created 🔥'
puts '___________________________'
