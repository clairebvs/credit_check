require './lib/credit_check'

check = CreditCheck.new
check.card_valid?(@card_number)
