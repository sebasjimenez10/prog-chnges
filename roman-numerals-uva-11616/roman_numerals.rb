class RomanNumerals

	@@roman_symbols = { "I"=>1, "V"=>5, "X"=>10, "L"=>50, "C"=>100, "D"=>500, "M"=>1000 }

	def convert input

		answer = nil

		if is_number?(input) then
			# If it's a number I have to decompose it dividing by ten

		else
			# If it's a roman numeral I have to evaluate the content
			total_value = 0
			last_value = 0

			input.split("").each do |letter|
				current_value = @@roman_symbols[ letter ]

				if( current_value > last_value ) then
					total_value -= last_value
					total_value += (current_value - last_value)
				else
					total_value += current_value
				end

				last_value = current_value

			end

			answer = total_value.to_s
			
		end

		return answer
	end

	def is_number? input
		
		Integer(input)
		true
	rescue ArgumentError
		false

	end

end
