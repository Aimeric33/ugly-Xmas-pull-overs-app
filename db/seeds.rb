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

puts "#{User[id: 1].first_name} has been created"

User.create!(
  first_name: "Antoine",
  last_name: "Berson",
  email: 'antoine.berson01@gmail.com',
  password: 'azerty'
)

User.create!(
  first_name: "Aimeric",
  last_name: "Marchau",
  email: 'marchauaimeric@gmail.com',
  password: 'azerty'
)

User.create!(
  first_name: "Georgy",
  last_name: "Ryssen",
  email: 'georges.ryssen@gmail.com',
  password: 'azerty'
)

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

Pull.create!(
  title: "Antoine's pull",
  description: "it's a beautiful one",
  available: true,
  size: "L",
  price: 56
)

Pull.create!(
  title: "Charlene's pull",
  description: "it's a beautiful one",
  available: true,
  size: "XS",
  price: 36
)

Pull.create!(
  title: "Aimeric's pull",
  description: "it's a beautiful one",
  available: true,
  size: "S",
  price: 39
)

puts 'pulls created 🔥'
puts '___________________________'
