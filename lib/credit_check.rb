class CreditCheck
  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number.to_i.digits
  end

  def double_every_other_digit
    double_number = @card_number.each_with_index.map { |card_number, index|
      if index.even?
        card_number
      else
        card_number * 2
      end
    }
  end

  def sum_over_9
    sum_over_9 = double_every_other_digit.map do |number|
    if number > 9
      number - 9
    else
      number
    end
   end
  end

  def sum_array
    sum = sum_over_9.sum
  end

  def card_valid?
   sum_array % 10
  end

end
