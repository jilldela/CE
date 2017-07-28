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

# p is_unique("abba") #  == false
# p is_unique("abc") # == true
# p is_unique("abc car") # == false

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

# ----------------------------

# Write a function, longest_common_substring(str1, str2) that
# takes two strings and
# returns the longest common substring.
# A substring is defined as any consecutive slice of letters from another string

def longest_common_substring(str1, str2)
  subs = []

  i = 0
  while i < str1.length
    j = 1

    while j < str1.length
      sub = ""
      sub << str1[i..j] if str1[i..j].length > 0
      j += 1
    end

    subs << sub

    i += 1
  end

  subs
end

p longest_common_substring('horseshoe', 'shoestring') # == 'shoe'
p longest_common_substring('horseshoe', 'shoehorse') # == 'horse'

# 1.
# obtain all subs for str1
# iterate through array of subs and check if str2 include sub
# hold max length in variable max
# return