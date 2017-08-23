# A. Use the terminal to create a new folder in your actualize folder called object_oriented_ruby.
# B. Create a new file in the folder called store_item.rb and open it in Sublime.
# C. Use hashes with symbols to represent the following scenario:
# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).

# apple = {:color => "red", :size => "apple sized", :price => 54.99, :in_stock => true}
# orange = {color: "orange", size: "3 inch diameter", price: 213.43, in_stock: false}
# lemon = {color: "yellow", size: "12 week old fetus", price: 1.99, in_stock: true}
# watermelon = {color: "green on the outside, red on the inside", size: "human head", price: 23432234.99, in_stock: false}

#redoing fruit hashes in class form
class Product
  attr_reader :name, :price, :in_stock
  attr_writer :price, :in_stock

  def initialize(input_options)
    @name = input_options[:name]
    @price = input_options[:price]
    @in_stock = input_options[:in_stock]
  end

end

class Fruit < Product
  attr_reader :color, :size

  def initialize(input_options)
    super
    @color = input_options[:color]
    @size = input_options[:size]
    
  end

end

fruits = [
  Fruit.new(
    name: "apple", color: "red",
    size: "apple sized", 
    price: 54.99, 
    in_stock: true
    ),
  Fruit.new(
    name: "orange", 
    color: "orange", 
    size: "3 inch diameter", 
    price: 213.43, 
    in_stock: false
    ),
  Fruit.new(
    name: "lemon", 
    color: "yellow", 
    size: "12 week old fetus", 
    price: 1.99, in_stock: true
    ),
  Fruit.new(
    name: "watermelon", 
    color: "green on the outside, red on the inside", 
    size: "human head", 
    price: 23432234.99, 
    in_stock: false
    )
]

p fruits[2].size
p fruits[3].in_stock
p fruits[3].in_stock=(true)
p fruits[3].in_stock