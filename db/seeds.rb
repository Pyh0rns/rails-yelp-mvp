# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St', phone_number: '1234', category: 'french' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch St', phone_number: '1234', category: 'french' }
frodon = { name: 'Frodon', address: 'Comte', phone_number: '1234', category: 'french' }
gandalf = { name: 'Gandalf', address: 'All around Middle Eartgh', phone_number: '1234', category: 'french' }
legolas = { name: 'Legolas', address: 'In the forest', phone_number: '1234', category: 'french' }
aragorn = { name: 'Aragorn', address: 'Septentrions area', phone_number: '1234', category: 'french' }
gimli = { name: 'Gimli', address: 'In the mine', phone_number: '1234', category: 'french' }
sam = { name: 'Sam', address: 'Comte', phone_number: '1234', category: 'french' }
merry = { name: 'Merry', address: 'Comte', phone_number: '1234', category: 'french' }
pippin = { name: 'Pippin', address: 'Comte', phone_number: '1234', category: 'french' }

[dishoom, pizza_east, frodon, gandalf, legolas, aragorn, gimli, sam, merry, pippin].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
