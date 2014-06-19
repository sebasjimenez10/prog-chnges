require 'minitest/autorun'
require_relative 'secret_word.rb'

class TestSecretWord < Minitest::Test

  def setup
    @secret_word = SecretWord.new
  end

  #####################################
  # test cases for five example words #
  #####################################

  def test_first_word
    execute_secret_word('colombia', 'c')
  end

  def test_second_word
    execute_secret_word('abcdba', 'ba')
  end

  def test_third_word
    execute_secret_word('neversayeven', 'even')
  end

  def test_fourth_word
    execute_secret_word('neveroddoreven', 'neveroddoreven')
  end

  def test_fifth_word
    execute_secret_word('listentothesilence', 'sil')
  end

  def execute_secret_word input, expected
    result = @secret_word.guess_secret_word(input)
    assert_equal(expected, result)
  end

end