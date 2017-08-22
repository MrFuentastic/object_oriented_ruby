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

class Fruit

  def initialize(name, color, size, price, in_stock)
    @name = name
    @color = color
    @size = size
    @price = price
    @in_stock = in_stock
  end

  def name
    @name
  end

  def color
    @color
  end

  def size
    @size
  end

  def price
    @price
  end

  def in_stock
    @in_stock
  end

  def price=(new_price)
    @price = new_price
  end

  def in_stock=(still_in_stock)
    @in_stock = still_in_stock
  end
end

fruits = [
  Fruit.new("apple", "red", "apple sized", 54.99, true),
  Fruit.new("orange", "orange", "3 inch diameter", 213.43, false),
  Fruit.new("lemon", "yellow", "12 week old fetus", 1.99, true),
  Fruit.new("watermelon", "green on the outside, red on the inside", "human head", 23432234.99, false)
]