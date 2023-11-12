# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10
  
  attr_accessor :id, :color, :price, :weight, :rented, :cargo
  
  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = CargoBag.new(MAX_CARGO_ITEMS);
  end

  def rent!
    rented = true
  end

end

class CargoBag
  attr_reader :max_capacity, :contents
  
  def initialize(max_capacity)
    @max_capacity = max_capacity
    @contents = []
  end
  
  def add_cargo(item)
    contents << item
  end

  def remove_cargo(item)
    contents.remove(item)
  end

  def bag_capacity
    max_capacity
  end
  
  def bag_size
    contents.size
  end

  def bag_remaining_capacity
    bag_capacity - bag_size
  end
  
end