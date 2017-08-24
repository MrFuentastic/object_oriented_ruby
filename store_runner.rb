require "./inventory"
require "./product"
require "./fruit"

fruits = [
  ElGuerro::Fruit.new(
                    name: "apple", color: "red",
                    size: "apple sized", 
                    price: 54.99, 
                    qty: 10
                    ),
  ElGuerro::Fruit.new(
                    name: "orange", 
                    color: "orange", 
                    size: "3 inch diameter", 
                    price: 213.43, 
                    qty: 3
                    ),
  ElGuerro::Fruit.new(
                     name: "lemon", 
                     color: "yellow", 
                     size: "12 week old fetus", 
                     price: 1.99,
                     qty: 7
                     ),
  ElGuerro::Fruit.new(
                    name: "watermelon", 
                    color: "green on the outside, red on the inside", 
                    size: "human head", 
                    price: 23432234.99, 
                    qty: 1
                    )
]

p fruits[2].size
p fruits[0].inventory
p fruits[1].inventory
p fruits[2].inventory
p fruits[3].inventory