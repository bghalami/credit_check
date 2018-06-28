require "../lib/credit_check"

credit_check = CreditCheck.new

p credit_check.valid_number?(5541808923795240)
p credit_check.valid_number?(5541801923795240)
credit_check.validation_output(5541808923795240)
credit_check.validation_output(5541801923795240)
