require "./inventory"

module ElGuerro

  class Product
    include Inventory

    attr_reader :name, :price, :in_stock
    attr_writer :price, :in_stock

    def initialize(input_options)
      @name = input_options[:name]
      @price = input_options[:price]
      @qty = input_options[:qty]
    end

  end

end