require './lib/credit_check'

user_input = gets.chomp
card_number = user_input
check = CreditCheck.new(card_number)
# check.card_valid?

# user_input = gets.chomp
user_input = card_number
# if card_number.card_valid? == check.card_valid?
if check.card_valid?
  puts "Your card is valid, let's go shopping"
else
  puts "Too bad, your card is not valid, no shopping for you today"
end
