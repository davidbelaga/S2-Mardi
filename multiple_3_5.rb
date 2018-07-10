def multiple_3_5
	add_3_5 = 0
	for n in 1...1000
		if n % 3 == 0 || n % 5 == 0 
			add_3_5 += n
		end
	end
	return add_3_5
end

puts multiple_3_5
