class Rental

  attr_reader :bike

  def initialize(bike:)
    @bike = bike
  end
  
  # wrapping dependencies
  def luggage_count
    bike.luggage.items.count
  end
  
  def luggage_weight
    bike.luggage.weight
  end
  
  def bike_weight
    bike.weight
  end
  
  def bike_price
    bike.price
  end
  
  
  def price
    bike_price + bike_weight * 2 + luggage_weight * 2
  end

  def weight
    bike.weight + luggage_weight
  end
  
end
