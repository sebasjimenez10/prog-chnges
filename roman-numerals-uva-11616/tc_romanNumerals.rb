require_relative 'roman_numerals'
require 'minitest/autorun'

class TestRomanNumerals < Minitest::Test

	def setup
		@roman = RomanNumerals.new
	end

	def test_is_number_true
		input = '2'

		result = @roman.is_number?(input)

		assert_equal(true, result)
	end

	def test_is_number_false
		input = 'II'

		result = @roman.is_number?(input)

		assert_equal(false, result)
	end

	def test_covert_one_to_roman

		#Arrange
		input = '1'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('I', result)

	end

	def test_convert_two_to_roman
		#Arrange
		input = '2'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('II', result)
	end

	def test_convert_three_to_roman
		#Arrange
		input = '3'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('III', result)
	end

	def test_convert_three_to_roman
		#Arrange
		input = '4'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('IV', result)
	end

	def test_convert_roman_one_to_arabic_one
		#Arrange
		input = 'I'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('1', result)
	end

	def test_convert_roman_two_to_arabic_two
		#Arrange
		input = 'II'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('2', result)
	end

	def test_convert_roman_three_to_arabic_three
		#Arrange
		input = 'III'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('3', result)
	end

	def test_convert_roman_four_to_arabic_four
		#Arrange
		input = 'IV'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('4', result)
	end
end
