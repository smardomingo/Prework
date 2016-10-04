class ShoppingCart
	attr_accessor :items, :total_price
	def initialize
		@items = []
		@total_price = 0
	end

	def add_item(item)
		@items.push(item)
	end

	def quantity_discount
		if @items.length > 5
			@total_price = 0.9 * total_price
		end
	end

	def checkout
		@total_price = 0
		@items.each do |item|
			if item.class == Fruit
				item.price
			elsif item.class == Houseware
				item.price
			end
		end
		quantity_discount
		return @total_price
	end
end

class Item
	attr_accessor :price 
	def initialize(name, price)
		@name = name
		@price = price		
	end
end

class Houseware < Item
	def price
		if @price >= 100
        	price = 0.95 * @price
      	else
        	price = @price
      	end
      	return price
	end
end

class Fruit < Item
	def price
		require 'date'
    	current_day = Time.now.strftime('%u')
    	if current_day == 6 || current_day == 7
        	price = 0.9 * @price
    	else
        	price = @price
    	end
    	return price
	end
end

joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(orange_juice)
#joshs_cart.add_item(rice)
puts joshs_cart.checkout