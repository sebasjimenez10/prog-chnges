class RomanNumerals

	def convert input
		if input.eql? '1' then
			'I'
		elsif input.eql? 'I' then
			'1'
		elsif input.eql? '2' then
			'II'
		end
	end

end
