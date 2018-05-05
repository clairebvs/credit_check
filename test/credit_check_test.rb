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

    assert_equal [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8], credit.double_every_other_digit(credit.card_number)
  end

  def test_sum_digit_over_nine
    credit = CreditCheck.new("4929735477250543")

    assert_equal [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8], credit.sum_over_9(credit.double_every_other_digit(credit.card_number))
  end

  def test_can_sum_array
    skip
    credit = CreditCheck.new("4929735477250543")

    assert_equal 80, credit.sum_array
  end

  def test_card_valid_or_invalid
    credit = CreditCheck.new("4929735477250543")
    credit2 = CreditCheck.new("342801633855673")

    assert credit.card_valid?
    refute credit2.card_valid?
  end
end
