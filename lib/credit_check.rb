class CreditCheck
  def initialize

  end

  def valid_number?(account_number)
    card_number = account_number.to_s
    #Seperating the string into elements in an array
    card_number_array = card_number.chars
    #Converting the strings to integers
    array_to_int = []
    card_number_array.each do |num|
      array_to_int << num.to_i
    end
    #Removing the check number and assigning it to a variable
    check = array_to_int.pop
    #Multiplying every other number by 2 starting from right
    multiply_array = []
    array_to_int.each.with_index do |elem, index|
      if index % 2 == 0
        multiply_array << elem * 2
      else
        multiply_array << elem
      end
    end
    #Summed digits over 10
    consolidate = []
    multiply_array.each do |num|
      if num >= 10
        consolidate << num - 9
      else
        consolidate << num
      end
    end
    #Sum of all elements
    sum = 0
    consolidate.each do |num|
      sum = sum + num
    end
    #Output
    if (check + sum) % 10 == 0
      return true
    else
      return false
    end
  end

  def validation_output(account_number)
    if valid_number?(account_number) == true
      puts "The number #{account_number} is valid"
    else
      puts "The number #{account_number} is invalid"
    end
  end
end
