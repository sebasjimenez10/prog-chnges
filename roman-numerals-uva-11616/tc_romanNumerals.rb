require_relative 'roman_numerals'
require 'minitest/autorun'

class TestRomanNumerals < Minitest::Test

	def setup
		@roman = RomanNumerals.new
	end

	################################
	# is_number? method test cases #
	################################

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

	######################################
	# convert arabic to roman test cases #
	######################################

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

	def test_convert_four_to_roman
		#Arrange
		input = '4'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('IV', result)
	end

	def test_convert_five_to_roman
		#Arrange
		input = '5'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('V', result)
	end

	def test_convert_six_to_roman
		#Arrange
		input = '6'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('VI', result)
	end

	def test_convert_seven_to_roman
		#Arrange
		input = '7'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('VII', result)
	end

	def test_convert_eight_to_roman
		#Arrange
		input = '8'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('VIII', result)
	end

	def test_convert_nine_to_roman
		#Arrange
		input = '9'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('IX', result)
	end

	def test_convert_ten_to_roman
		#Arrange
		input = '10'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('X', result)
	end

	def test_convert_eleven_to_roman
		#Arrange
		input = '11'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('XI', result)
	end

	def test_convert_twelve_to_roman
		#Arrange
		input = '12'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('XII', result)
	end

	def test_convert_thirteen_to_roman
		#Arrange
		input = '13'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('XIII', result)
	end

	def test_convert_fourteen_to_roman
		#Arrange
		input = '14'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('XIV', result)
	end

	def test_convert_fifteen_to_roman
		#Arrange
		input = '15'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('XV', result)
	end

	######################################
	# convert roman to arabic test cases #
	######################################

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

	def test_convert_roman_five_to_arabic_five
		#Arrange
		input = 'V'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('5', result)
	end

	def test_convert_roman_six_to_arabic_six
		#Arrange
		input = 'VI'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('6', result)
	end

	def test_convert_roman_seven_to_arabic_seven
		#Arrange
		input = 'VII'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('7', result)
	end

	def test_convert_roman_eight_to_arabic_eight
		#Arrange
		input = 'VIII'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('8', result)
	end

	def test_convert_roman_nine_to_arabic_nine
		#Arrange
		input = 'IX'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('9', result)
	end

	def test_convert_roman_ten_to_arabic_ten
		#Arrange
		input = 'X'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('10', result)
	end

	def test_convert_roman_eleven_to_arabic_eleven
		#Arrange
		input = 'XI'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('11', result)
	end

	def test_convert_roman_twelve_to_arabic_twelve
		#Arrange
		input = 'XII'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('12', result)
	end

	def test_convert_roman_thriteen_to_arabic_thirteen
		#Arrange
		input = 'XIII'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('13', result)
	end

	def test_convert_roman_fourteen_to_arabic_fourteen
		#Arrange
		input = 'XIV'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('14', result)
	end

	def test_convert_roman_fifteen_to_arabic_fifteen
		#Arrange
		input = 'XV'
		#Act
		result = @roman.convert(input)
		#Assert
		assert_equal('15', result)
	end
end
