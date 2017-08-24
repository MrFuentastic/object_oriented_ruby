module Movement
  def turn(new_direction)
    @direction = new_direction
  end

    def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end
end

class Vehicle

  include Movement

  def initialize
    @speed = 0
    @direction = 'north'
  end

end

class Car < Vehicle

  def initialize(input_options)
    super()
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle

  def initialize(input_options)
    super()
    @gears = input_options[:gears]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

p bike = Bike.new(
                    gears: 1,
                    weight: 5
                     )

p bike.turn("to the skies")