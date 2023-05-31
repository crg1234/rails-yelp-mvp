# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "Cleaning database..."
# Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "020 7420 9324", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "020 7729 1888", category: "italian"}
flava_flav = {name: "Flava Flav", address: "26A Far High St, London E2 6PQ", phone_number: "020 7459 1888", category: "french"}
chicken_shack = {name: "Chicken Shack", address: "4 Border St, London E1 6XP", phone_number: "020 3429 1848", category: "belgian"}

[dishoom, pizza_east, flava_flav, chicken_shack].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
