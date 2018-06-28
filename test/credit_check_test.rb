require "./credit_check"
require "minitest/autorun"
require "minitest/pride"

class CreditCheckTest < Minitest::Test
  def test_valid_number?
    credit_check = CreditCheck.new(5541808923795240)
    assert_equal true, credit_check.valid_number?(5541808923795240)
  end

  def test_validation_output
    credit_check = CreditCheck.new(5541808923795240)
    assert_equal "The number 5541808923795240 is valid",credit_check.validation_output(5541808923795240)
  end
end
