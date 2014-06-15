require_relative 'roman_numerals'
require 'minitest/autorun'

class TestRomanNumerals < Minitest::Test

	def setup
		@roman = RomanNumerals.new
	end

	def test_covert_one_to_roman

		#Arrange
		input = '1'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('I', result)

	end

end
