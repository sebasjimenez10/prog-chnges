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
		#Arrange
		input = '2'
		#Act
		result = @roman.is_number?(input)
		#Assert
		assert_equal(true, result)
	end

	def test_is_number_false
		#Arrange
		input = 'II'
		#Act
		result = @roman.is_number?(input)
		#Assert
		assert_equal(false, result)
	end

	#############################
	# validate input test cases #
	#############################

	######################################
	# convert arabic to roman test cases #
	######################################

	def test_covert_one_to_roman
		generic_fn_roman_numerals( '1', 'I' )
	end

	def test_convert_two_to_roman
		generic_fn_roman_numerals( '2', 'II' )
	end

	def test_convert_three_to_roman
		generic_fn_roman_numerals( '3', 'III' )
	end

	def test_convert_four_to_roman
		generic_fn_roman_numerals( '4', 'IV' )
	end

	def test_convert_five_to_roman
		generic_fn_roman_numerals( '5', 'V' )
	end

	def test_convert_six_to_roman
		generic_fn_roman_numerals( '6', 'VI' )
	end

	def test_convert_seven_to_roman
		generic_fn_roman_numerals( '7', 'VII' )
	end

	def test_convert_eight_to_roman
		generic_fn_roman_numerals( '8', 'VIII' )
	end

	def test_convert_nine_to_roman
		generic_fn_roman_numerals( '9', 'IX' )
	end

	def test_convert_ten_to_roman
		generic_fn_roman_numerals( '10', 'X' )
	end

	def test_convert_eleven_to_roman
		generic_fn_roman_numerals( '11', 'XI' )
	end

	def test_convert_twelve_to_roman
		generic_fn_roman_numerals( '12', 'XII' )
	end

	def test_convert_thirteen_to_roman
		generic_fn_roman_numerals( '13', 'XIII' )
	end

	def test_convert_fourteen_to_roman
		generic_fn_roman_numerals( '14', 'XIV' )
	end

	def test_convert_fifteen_to_roman
		generic_fn_roman_numerals( '15', 'XV' )
	end

	def test_convert_sixteen_to_roman
		generic_fn_roman_numerals( '16', 'XVI' )
	end

	def test_convert_45_to_roman
		generic_fn_roman_numerals( '45', 'XLV' )
	end

	def test_convert_1000_to_roman
		generic_fn_roman_numerals( '1000', 'M' )
	end

	def test_convert_1025_to_roman
		generic_fn_roman_numerals( '1025', 'MXXV' )
	end

	def test_convert_1325_to_roman
		generic_fn_roman_numerals( '1325', 'MCCCXXV' )
	end

	def test_convert_942_to_roman
		generic_fn_roman_numerals( '942', 'CMXLII' )
	end

	######################################
	# convert roman to arabic test cases #
	######################################

	def test_convert_roman_one_to_arabic_one
		generic_fn_roman_numerals( 'I', '1' )
	end

	def test_convert_roman_two_to_arabic_two
		generic_fn_roman_numerals( 'II', '2' )
	end

	def test_convert_roman_three_to_arabic_three
		generic_fn_roman_numerals( 'III', '3' )
	end

	def test_convert_roman_four_to_arabic_four
		generic_fn_roman_numerals( 'IV', '4' )
	end

	def test_convert_roman_five_to_arabic_five
		generic_fn_roman_numerals( 'V', '5' )
	end

	def test_convert_roman_six_to_arabic_six
		generic_fn_roman_numerals( 'VI', '6' )
	end

	def test_convert_roman_seven_to_arabic_seven
		generic_fn_roman_numerals( 'VII', '7' )
	end

	def test_convert_roman_eight_to_arabic_eight
		generic_fn_roman_numerals( 'VIII', '8' )
	end

	def test_convert_roman_nine_to_arabic_nine
		generic_fn_roman_numerals( 'IX', '9' )
	end

	def test_convert_roman_ten_to_arabic_ten
		generic_fn_roman_numerals( 'X', '10' )
	end

	def test_convert_roman_eleven_to_arabic_eleven
		generic_fn_roman_numerals( 'XI', '11' )
	end

	def test_convert_roman_twelve_to_arabic_twelve
		generic_fn_roman_numerals( 'XII', '12' )
	end

	def test_convert_roman_thriteen_to_arabic_thirteen
		generic_fn_roman_numerals( 'XIII', '13' )
	end

	def test_convert_roman_fourteen_to_arabic_fourteen
		generic_fn_roman_numerals( 'XIV', '14' )
	end

	def test_convert_roman_fifteen_to_arabic_fifteen
		generic_fn_roman_numerals( 'XV', '15' )
	end

	def test_convert_roman_sixteen_to_arabic_sixteen
		generic_fn_roman_numerals( 'XVI', '16' )
	end

	def test_convert_roman_124_to_arabic_124
		generic_fn_roman_numerals( 'CXXIV', '124' )
	end

	def test_convert_roman_1983_to_arabic_1983
		generic_fn_roman_numerals( 'MCMLXXXIII', '1983' )
	end

	###########################################
	# Generic function to call roman numerals #
	###########################################

	def generic_fn_roman_numerals(input, expected)
		#Arrange
		#This step is not longer used because the input comes as parameter
		#Act
		result = @roman.convert( input )
		#Assert
		assert_equal(expected, result)
	end

end
