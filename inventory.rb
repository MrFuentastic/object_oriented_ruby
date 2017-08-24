module ElGuerro

  module Inventory

    def inventory
      if @qty < 5
        return @qty += 5
      else
        return @qty
      end
    end

  end

end