# Write a method, digital_root(num). 
# It should sum the digits of a positive integer. 
# If it is greater than or equal to 10, sum the digits of the resulting number. 
# Keep repeating until there is only one digit in the result, called the "digital root". 
# Do not use string conversion within your method.

def digital_root(num)
  until num < 10
    num = dig_sum(num)
  end
  num
end

def dig_sum(num)
  sum = 0

  while num > 0
    sum += (num % 10)
    num = (num / 10)
  end

  sum
end

p digital_root(234) # == 9
# 2 + 3 + 4 = 9
p digital_root(32441) # == 5
# 3 + 2 + 4 + 4 + 1 = 14
# 1 + 4 = 5
p digital_root(1045) # == 1
# 1 + 0 + 4 + 5 = 10
# 1 + 0 = 1
