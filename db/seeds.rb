# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "555 654 678", category: "belgian" }
epicure = { name: "Epicure", address: "75008 Paris", phone_number: "06 67 65 65 65", category: "french" }
asiatique = { name: "Le bistrot asiatique", address: "54 rue Breteuil, 13006 Marseille France", phone_number: "04 91 98 17 68", category: "chinese" }
pasta = { name: "Pasta", address: "Italia", category: "italian" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }

[ dishoom, pizza_east, epicure, asiatique, pasta ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
