card_number = "4024007136512380"

#Seperating the string into elements in an array
cna = card_number.chars

#Converting the strings to integers
cream = []
cna.each do |num|
  cream << num.to_i
end

#Removing the check number and assigning it to a variable
check = cream.pop

#Multiplying every other number by 2 starting from right
feel = []
cream.each.with_index do |elem, index|
  if index % 2 == 0
    feel << elem * 2
  else
    feel << elem
  end
end

#Old formula
  # x = -1
  # while x >= cna.length * (-1)
  #   if x % 2 != 0
  #     cna[x] = cna[x] * 2
  #     x = x - 1
  #   else
  #     x = x - 1
  #   end
  # end

#Summed digits over 10
spork = []
feel.each do |num|
  if num >= 10
    spork << num - 9
  else
    spork << num
  end
end

#Sum of all elements
sum = 0
spork.each do |num|
  sum = sum + num
end

#Output
if (check + sum) % 10 == 0
  puts "The number is valid!"
else
  puts "The number is invalid!"
end
