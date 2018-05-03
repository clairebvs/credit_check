require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    credit = CreditCheck.new("4929735477250543")

    assert_instance_of CreditCheck, credit
  end

  def test_it_has_a_card_number
    credit = CreditCheck.new("4929735477250543")

    assert_equal "4929735477250543", credit.card_number
  end

  def test_card_number_can_be_converted_to_array
    credit = CreditCheck.new("4929735477250543")

    assert_equal ["4", "9", "2", "9", "7", "3", "5", "4", "7", "7", "2", "5", "0", "5", "4", "3"], credit.convert_to_array
  end

  def test_can_reverse_card_number
    skip
    credit
  end
end
