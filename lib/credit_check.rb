class CreditCheck
  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number.to_i.digits
    # binding.pry
  end

  def double_every_other_digit
    double_number = @card_number.each_with_index.map { |card_number, index|
      if index.even?
        card_number
      else
        card_number * 2
      end
    }
    binding.pry
  end

end
