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

  def test_seperate_to_array
    credit_check = CreditCheck.new(5541808923795240)
    assert_equal ["5","5","4","1","8","0","8","9","2","3","7","9","5","2","4","0"] ,credit_check.seperate_to_array
  end

  def test_array_to_int
    credit_check = CreditCheck.new(5541808923795240)
    credit_check.seperate_to_array
    credit_check.array_to_int
    assert_equal [5,5,4,1,8,0,8,9,2,3,7,9,5,2,4,0],credit_check.array_as_int
  end

  def test_remove_check_number
    credit_check = CreditCheck.new(5541808923795240)
    credit_check.seperate_to_array
    credit_check.array_to_int
    credit_check.remove_check_number
    assert_equal 0, credit_check.check
  end

  def test_multiply_every_other
    credit_check = CreditCheck.new(5541808923795240)
    credit_check.seperate_to_array
    credit_check.array_to_int
    credit_check.remove_check_number
    credit_check.multiply_every_other
    assert_equal [10,5,8,1,16,0,16,9,4,3,14,9,10,2,8],credit_check.double_array
  end

  def test_consolidate_over_ten
    credit_check = CreditCheck.new(5541808923795240)
    credit_check.seperate_to_array
    credit_check.array_to_int
    credit_check.remove_check_number
    credit_check.multiply_every_other
    credit_check.consolidate_over_ten
    assert_equal [1,5,8,1,7,0,7,9,4,3,5,9,1,2,8],credit_check.consolidate
  end

  def test_sum
    credit_check = CreditCheck.new(5541808923795240)
    credit_check.seperate_to_array
    credit_check.array_to_int
    credit_check.remove_check_number
    credit_check.multiply_every_other
    credit_check.consolidate_over_ten
    credit_check.sum
    assert_equal 70, credit_check.summed
  end

end
