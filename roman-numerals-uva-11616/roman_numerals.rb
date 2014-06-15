class RomanNumerals

	def convert input

		if is_number?(input) then
			integer = Integer(input)
			if integer == 1 then
				'I'
			elsif integer == 2 then
				'II'
			end
				
		else
			if input.eql? 'I' then
				'1'
			elsif input.eql? 'II' then
				'2'
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
