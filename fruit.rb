require "./product"

module ElGuerro

  class Fruit < Product
    attr_reader :color, :size

    def initialize(input_options)
      super
      @color = input_options[:color]
      @size = input_options[:size]
      
    end

  end

end
