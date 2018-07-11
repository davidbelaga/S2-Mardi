
jour_1 = { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 }
jour_2 = { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 }
jour_3 = { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5, :JNJ => 14 }
jour_4 = { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3 }
jour_5 = { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 }
jour_6 = { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 }
jour_7 = { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }


def trader_du_dimanche(array)
  day_bought_max = []

  for i in 0...array.size-1
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
  array = array[(max_buy+1)...array.size]
  max_sell = array.index(array.max) + max_buy + 1

  arr_best_buysell = []
  arr_best_buysell << max_buy
  arr_best_buysell << max_sell
  return arr_best_buysell
end



def week(*day)
companies = day[0].keys
num_companies = companies.size
array_values =[]

for m in 0...companies.size
	array_price = []
	for n in 0...day.size
		price = day[n][companies[m]]
		array_price << price
	end
		c = trader_du_dimanche(array_price)
		a = c[0]
		b = c[1]

	puts "Pour l'entreprise #{companies[m]}, il faut acheter au jour #{a} et vendre au jour #{b}"
end


end

 week(jour_1, jour_2, jour_3, jour_4, jour_5, jour_6, jour_7)
