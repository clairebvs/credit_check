require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    credit = CreditCheck.new("4929735477250543")

    assert_instance_of CreditCheck, credit
  end

  def test_convert_string_to_reverse_array
    credit = CreditCheck.new("4929735477250543")

    assert_equal [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4], credit.card_number
  end

  def test_can_double_every_other_digit
    credit = CreditCheck.new("4929735477250543")

    assert_equal [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8], credit.double_every_other_digit
  end

  def test_sum_digit_over_nine
    credit = CreditCheck.new("4929735477250543")

    assert_equal [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8], credit.sum_over_9
  end

  def test_can_sum_array
    credit = CreditCheck.new("4929735477250543")

    assert_equal 80, credit.sum_array
  end

  def test_modulo_10_equal_0
    credit = CreditCheck.new("4929735477250543")

    assert_equal 0, credit.modulo
  end
end
