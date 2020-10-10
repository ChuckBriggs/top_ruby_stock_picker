# stock_picker.rb
#require 'pry'; binding.pry # pry break point

def stock_picker(prices)
	buy_day = 0
	sell_day = 0
	profit = 0
	i = 0
	j = 0

	while i < prices.length
		j = i
		while j < prices.length
			if prices[j] - prices[i] > profit
				buy_day = i
				sell_day = j
				profit = prices[j] - prices[i]
			end
			j += 1
		end
		i += 1
	end
	return [buy_day, sell_day]
end

price_array = [17,3,6,9,15,8,6,1,10]
p stock_picker(price_array)

price_array = [17,10,9,7,5,3,1]
p stock_picker(price_array)

price_array = [1,17,3,6,9,15,8,6,1,10]
p stock_picker(price_array)

