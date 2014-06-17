class RomanNumerals

	@@roman_symbols = { 
		"I"=>1, "V"=>5, "X"=>10, "L"=>50, "C"=>100, "D"=>500, "M"=>1000 
	}

	@@unique_combinations = {
		"IV"=>4, "IX"=>9, "XL"=>40, "XC"=>90, "CD"=>400, "CM"=>900
	}

	@@sums_to_right = {
		1=>1, 5=>1, 10=>10, 50=>10, 100=>100, 500=>100, 1000=>1000
	}

	def convert input

		answer = nil

		if is_number?(input) then
			# If it's a number I have to decompose it dividing by ten
			decomposed_string = input.split("")
			decomposed_numbers = Array.new

			decomposed_string.each do | ds |
				decomposed_numbers.push( Integer(ds) )
			end

			decomposed_numbers.map! do | dn |
				dn * 10 ** ( (decomposed_numbers.length() - 1) - decomposed_numbers.index(dn) )
			end

			answer = String.new
			decomposed_numbers.each do | dn |

				if dn != 0 then

					if @@roman_symbols.key(dn) != nil then
					
						answer.concat( @@roman_symbols.key(dn).to_s )
					elsif @@unique_combinations.key(dn) != nil then
						
						answer.concat( @@unique_combinations.key(dn).to_s )
					else

						@@roman_symbols.values.each do | value |

							if (dn - value) <= (3 * @@sums_to_right[value] ) then

								answer.concat( @@roman_symbols.key( value ).to_s )

								(dn - value).times do | i |
									answer.concat( @@roman_symbols.key( @@sums_to_right[value] ).to_s )
								end
								break

							end	
						end
					end
				end
			end
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
