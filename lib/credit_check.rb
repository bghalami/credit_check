class CreditCheck
 attr_accessor :card_number, :array_as_int, :check, :double_array, :consolidate, :summed, :card_number_array
  def initialize
    @card_number = card_number.to_s
    @array_as_int = []
    @check = 0
    @double_array = []
    @consolidate = []
    @summed = 0
    @card_number_array = []
  end

  def seperate_to_array
    @card_number_array = @card_number.chars
  end

  def array_to_int
    @card_number_array.each do |num|
      @array_as_int << num.to_i
    end
  end

  def remove_check_number
    @check = @array_as_int.pop
  end

  def multiply_every_other
    @array_as_int.each.with_index do |elem, index|
      if index % 2 == 0
        @double_array << elem * 2
      else
        @double_array << elem
      end
    end
  end

  def consolidate_over_ten
    @double_array.each do |num|
      if num >= 10
        @consolidate << num - 9
      else
        @consolidate << num
      end
    end
  end

  def sum
    @consolidate.each do |num|
      @summed += num
    end
  end

  def activate
    seperate_to_array
    array_to_int
    remove_check_number
    multiply_every_other
    consolidate_over_ten
    sum
    valid_or_output
  end

  def valid_or_output
    puts "To see if this card number is valid, enter [1], to get validation output enter [2]"
    answer = gets.to_i
    if answer == 1
      valid_number?(@card_number)
    else
      validation_output(@card_number)
    end
  end

  def valid_number?(card_number)
    if (@check + @sum) % 10 == 0
      @summed += num
    end
  end

  def activate
    seperate_to_array
    array_to_int
    remove_check_number
    multiply_every_other
    consolidate_over_ten
    sum
    valid_or_output
  end

  def valid_or_output
    puts "To see if this card number is valid, enter [1], to get validation output enter [2]"
    answer = gets.to_i
    if answer == 1
      valid_number?(@card_number)
    else
      validation_output(@card_number)
    end
  end

  def valid_number?(card_number)
    if (@check + @summed) % 10 == 0
      p true
    else
      p false
    end
  end

  def validation_output(card_number)
    if valid_number?(@card_number) == true
      p "The number #{@card_number} is valid"
    else
      p "The number #{@card_number} is invalid"
    end
  end
end
