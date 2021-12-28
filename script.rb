
def stock_picker(stock_prices)
	largest_profit = 0
	buy_sell_days = []
	stock_prices.each_with_index do |item1, index1|
		stock_prices.each_with_index do |item2, index2|
			profit = item2 - item1

			if profit > largest_profit && index1 < index2
				largest_profit = profit
				buy_sell_days =  [index1, index2]
			end
		end
	end
	p buy_sell_days
end

stock_picker([17,3,6,9,15,8,6,1,10])
