class InventoryItem
    attr_accessor :name, :category, :quantity, :price #getter nd setter method 
   
    def initialize(name, category, quantity, price)
       @name = name
       @category = category
       @quantity = quantity
       @price = price
    end
   
    def to_h
       { name: name, category: category, quantity: quantity, price: price }
    end
   
    def display_details
       puts "Name: #{name}, Category: #{category}, Quantity: #{quantity}, Price: #{price}" # string interpolation 
    end
   
    def check_stock
       if quantity < 10
         puts "Low stock, order more."
       else
         puts "In stock."
       end
    end
   end
   
   items = []
   items << InventoryItem.new("Strawberry", "Fruit", 10, 1.5)
   items << InventoryItem.new("Lichi", "Fruit", 20, 1.0)
   items << InventoryItem.new("Jack fruit", "Vegetable", 30, 4.0)
   
   items.each do |item| # iterator 
    item.display_details
    item.check_stock
   end
   
   puts "Enter the name, category, quantity, and price of a new item:"
   name = gets.chomp
   category = gets.chomp
   quantity = gets.chomp.to_i
   price = gets.chomp.to_f
   
   new_item = InventoryItem.new(name, category, quantity, price)
   items << new_item
   
   puts "Total value of the inventory: #{items.sum { |item| item.quantity * item.price }}"
   