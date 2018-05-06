class CreditCheck
  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number.to_i.digits
  end

  def double_every_other_digit(card_number)
    card_number.map.with_index { |card_number, index|
      if index.even?
        card_number
      else
        card_number * 2
      end
    }
  end

  def sum_over_9(number_array)
    number_array.map do |number|
      if number > 9
        number - 9
      else
        number
      end
    end
  end

  def sum_array(array)
    array.sum
  end

  def card_valid?
    doubled = double_every_other_digit(@card_number)
    sum9 = sum_over_9(doubled)
    sum = sum_array(sum9)
    sum % 10 == 0
  end

end
