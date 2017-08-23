class Vehicle

  def initialize(vehicle_hash)
    @speed = vehicle_hash[:speed]
    @direction = vehicle_hash[:direction]
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car < Vehicle
  attr_writer :fuel, :make, :model
  attr_reader :fuel, :make, :model

  def initialize(vehicle_hash)
    super
    @fuel = vehicle_hash[:fuel]
    @make = vehicle_hash[:make]
    @model = vehicle_hash[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike < Vehicle
  attr_writer :type, :weight, :gears
  attr_reader :type, :weight, :gears

  def initialize(vehicle_hash)
    super
    @gears = vehicle_hash[:gears]
    @type = vehicle_hash[:type]
    @weight = vehicle_hash[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

chwin = Bike.new(
                  speed: "10mph", 
                  gears: 1,
                  direction: "true north", 
                  type: "Shwinn", 
                  weight: "30lbs"
                  )
p chwin