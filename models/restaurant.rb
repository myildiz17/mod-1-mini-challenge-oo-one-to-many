class Restaurant
  attr_reader :name, :cuisine

  @@all = []
  
  def initialize(name, cuisine)
    @name = name
    @cuisine = cuisine
    @@all << self
  end

  def self.all
    @@all
  end

  def menu_items
    MenuItem.all.select do |menu_instance|
      menu_instance.restaurant == self
    end
  end

  def add_menu_item(dish_name, price)
    MenuItem.new(self, dish_name, price)
  end

  def self.print_menu
    print=[]
    MenuItem.all.select do |menu_instance|
      # menu_instance.restaurant == self
      print << "Restaurant: #{menu_instance.restaurant.name} Menu Item: #{menu_instance.dish_name} Price: #{menu_instance.price}"
    end
    print
    # binding.pry
  end

    def self.biggest_menu
      all_rest = []
      all_grouped = {}
      MenuItem.all.map do |menu_instance|
        all_rest << menu_instance.restaurant
      end
   all_grouped = all_rest.each_with_object(Hash.new(0)) { |name, hash| hash[name] += 1 }
      arr=[]
      all_grouped.each do |k,v|
        arr << v
      end
        max_num = arr.max

      res_with_max=[]
      all_grouped.each do |k,v|
        if v == 3
        res_with_max << k
        end
      end
    end
    
    def tasting_menu_cost
      arr = MenuItem.all.select do |menu_instance|
        menu_instance.restaurant == self
      end
      price_list = arr.map do |el|
        el.price
      end
      total = 0
      price_list.each {|i| total+=i}
      total
    end

end # end of Restaurant class