class MenuItem
    attr_accessor :price
    attr_reader :restaurant, :dish_name

    @@all = []

    def initialize(restaurant, dish_name, price )
        @restaurant = restaurant
        @dish_name = dish_name
        @price = price
       @@all << self 
    end

    def self.all
        @@all
    end

    def restaurant_name
        self.restaurant.name
    end
 
end # end of MenuItem class