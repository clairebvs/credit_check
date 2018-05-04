class CreditCheck
  attr_accessor :card_number

  def initialize
    @card_number = card_number.to_i.digits
  end

  def double_every_other_digit
    double_number = @card_number.each_with_index.map do |card_number, index|
      if index.even?
        card_number
      else
        card_number * 2
      end
    end
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

  def modulo
   sum_array % 10
  end

  def card_valid?(modulo)
    modulo
    # binding.pry
    user_input = gets.chomp
    if modulo == 0
      # card_number = true
       puts "Your card is valid, you can go shopping !!!"
     else
      # card_number = false
       puts 'Your card is invalid, bad day for you no shopping !!!'
    end
  end


end
