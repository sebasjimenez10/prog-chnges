class RomanNumerals

	def convert input

		roman_symbols = [ 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X', 'XI' ]

		if is_number?(input) then
			integer = Integer(input)
			roman_symbols[integer-1]

		else
			value = roman_symbols.index(input)
			if value != nil then
				(value + 1).to_s
			end

		end
	end

	def is_number? input
		
		Integer(input)
		true
	rescue ArgumentError
		false

	end

end
