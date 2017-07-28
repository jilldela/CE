# Implement an algorithm to determine if a string has all unique characters. 
# What if you cannot use additional data structures?

def is_unique(string)
  chars = Hash.new(0)

  string.each_char do |ch|
    chars[ch] += 1
    
    if chars[ch] > 1
      return false
    end
  end

  true
end

p is_unique("abba") #  == false
p is_unique("abc") # == true
p is_unique("abc car") # == false

# 1.
# sort string but this makes O(log n)
# compare each char to preceding char
# return false if char == preceding char

# 2.
# create hash with ch as key and boolean as value
# iterate through each char in string
# if val in hash == true
# return false because ch already seen in string
# else
# change val in hash

