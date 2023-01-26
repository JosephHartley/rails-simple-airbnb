require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
6.times do
  flat = Flat.new(
    name: Faker::Hipster.sentence,
    address: Faker::Address.full_address,
    description: Faker::Hipster.paragraph,
    price_per_night: rand(50..500),
    number_of_guests: rand(2..20)
  )
  flat.save!
end
