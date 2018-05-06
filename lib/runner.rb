require './lib/credit_check'

check = CreditCheck.new(card_number)
check.card_valid?
