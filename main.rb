!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'

items = [:apple, :water, :protein_bar]

luggage = Luggage.new(initial_capacity: Luggage::DEFAULT_MAX_CAPACITY, items: items)

bike = Bike.new(id: 1, color: :pink, price: 99.99, luggage: luggage)

rental = Rental.new(bike: bike)

puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"

