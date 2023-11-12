!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)
# bag remains a part of Bike due to the bike defining its size
bag = bike.cargo

bag.add_cargo(:apples)
bag.add_cargo(:water)
bag.add_cargo(:repair_kit)

puts "Space for #{bag.bag_remaining_capacity} items left."

bike.rent!
