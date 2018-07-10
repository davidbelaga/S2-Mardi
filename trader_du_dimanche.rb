evolution_price = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def trader_du_dimanche(array)
  day_bought_max = []

  for i in 0..array.size
    all_sales = []
    benefit = 0
	for j in i + 1...array.size
	  benefit = array[j] - array[i]
	  all_sales << benefit
    end
    day_bought_max << all_sales.max
  end
  # print day_bought_max
  max_buy = day_bought_max.index(day_bought_max.compact.max)
  # loop to find the index of the best day to sell
  max_sell = array.index(array[1..array.size].compact.max)

  arr_best_buysell = []
  arr_best_buysell << max_buy
  arr_best_buysell << max_sell
  return arr_best_buysell
end
print trader_du_dimanche(evolution_price)


