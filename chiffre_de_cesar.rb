def chiffre_de_cesar(string, x)
	string = string.to_s.split("")
	x = x.to_i
	coded_message = ""


	string.each do |char|

		num_char_modif = char

		if ("a".."z").to_a.include?char

			num_char_modif  = char.ord + x
			
# l'alphabet en minuscule ASCII

			if num_char_modif > 122
				num_char_modif = 96 + (num_char_modif % 122) 

# l'alphabet en majuscules ASCII

			elsif  num_char_modif > 90 && num_char_modif < 97
				num_char_modif = 64 + (num_char_modif % 90)
			end

		end

		if ("A".."Z").to_a.include?char

			num_char_modif  = char.ord + x
			
# l'alphabet en minuscule ASCII

			if num_char_modif > 122
				num_char_modif = 96 + (num_char_modif % 122) 

# l'alphabet en majuscules ASCII

			elsif  num_char_modif > 90 && num_char_modif < 97
				num_char_modif = 64 + (num_char_modif % 90)
			end

		end



		coded_message += num_char_modif.chr

	end

	return coded_message

end


puts chiffre_de_cesar("What a ztring!", 5)



