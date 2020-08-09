require 'pry'
require_relative "./models/menu_item"
require_relative "./models/restaurant"

# test your code here!
# create a few new restaurant instances and menu item instances
# make sure you initialize them with the correct data 
  # (how does a menu item know which restaurant it belongs to?)

 
  r1 = Restaurant.new("Istanbul", "Meddeterian")
  r2 = Restaurant.new("Mexican", "Spicy")
  r3 = Restaurant.new("Roxy", "Italian")

  m1 = MenuItem.new(r1, "kebab", 10 )
  m2 = MenuItem.new(r1, "soup", 5 )
  m3 = MenuItem.new(r1, "doner", 7 )
  m4 = MenuItem.new(r2, "Tacos", 3 )
  m5 = MenuItem.new(r2, "Mole", 5 )
  m6 = MenuItem.new(r3, "Lazagna", 11 )
  
  
  m7 = r3.add_menu_item("Pizza", 4)

# a = r1.menu_items
# add_menu_item(dish_name, price)

# a=Restaurant.print_menu

# Restaurant.biggest_menu
a= r1.tasting_menu_cost
binding.pry
"pls"