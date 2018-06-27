card_number = "4929735477250543"

#Seperating the string into elements in an array
cna = card_number.chars

#Converting the strings to integers
cna.map! do |num|
  num.to_i
end

#Removing the check number and assigning it to a variable
check = cna.pop

#Multiplying every other number by 2 starting from right
x = -1
while x >= cna.length * (-1)
  if x % 2 != 0
    cna[x] = cna[x] * 2
    x = x - 1
  else
    x = x - 1
  end
end

#Summed digits over 10
cna.map! do |num|
  if num >= 10
    num = num - 9
  else
    num = num
  end
end

#Sum of all elements
sum = 0
cna.each do |num|
  sum = sum + num
end

#Output
if (check + sum) % 10 == 0
  puts "The number is valid!"
else
  puts "The number is invalid!"
end
