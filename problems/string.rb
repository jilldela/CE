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

# def longest_common_substring(str1, str2)
#   subs = []

#   i = 0
#   while i < str1.length
#     j = 1

#     while j < str1.length
#       sub = ""
#       sub << str1[i..j] if str1[i..j].length > 0
#       j += 1
#     end

#     subs << sub

#     i += 1
#   end

#   subs
# end

# p longest_common_substring('horseshoe', 'shoestring') # == 'shoe'
# p longest_common_substring('horseshoe', 'shoehorse') # == 'horse'

# 1.
# obtain all subs for str1
# iterate through array of subs and check if str2 include sub
# hold max length in variable max
# return

# ---------------------
# Define a method, all_anagrams, that 
# takes a string and 
# returns an array of all the unique combinations

def all_anagrams(string)
  return [string] if string.length <= 1

  options = all_anagrams(string[1..-1])

  result = []

  options.each do |sub|
    string.length.times do |i|
      result << sub[0...i] + string[0] + sub[i..-1]
    end
  end

  result
end

# p all_anagrams('') # == []
# p all_anagrams('a') # == ['a']
# p all_anagrams('ab') # == ['ab', 'ba']
# p all_anagrams('abc') ## == ['abc', 'acb', 'bac', 'bca', 'cab', cba']

# -------------------------------
# Given two strings s and t, write a function to determine if t is an anagram of s.

# For example,
# s = "anagram", t = "nagaram", return true.
# s = "rat", t = "car", return false.

def is_anagram(s, t)
    s_count = Hash.new(0)
    t_count = Hash.new(0)
    
    s.each_char do |ch|
        s_count[ch] += 1
    end
    
    t.each_char do |ch|
        t_count[ch] += 1
    end
    
    t.each_char do |ch|
        return false if s_count[ch] != t_count[ch]
    end
    
    s.each_char do |ch|
        return false if s_count[ch] != t_count[ch]
    end
    
    true
end

# --------------------------------------------------------
# Input Format
# The first line contains a single string, a. 
# The second line contains a single string, b.

# Output Format
# Print a single integer denoting the number of characters you must 
# delete to make the two strings anagrams of each other.

# Sample Input
# cde
# abc

# Sample Output
# 4

def anagrams(a, b)
  a_count = Hash.new(0)
  a.each_char do |ch|
      a_count[ch] += 1
  end

  b_count = Hash.new(0)
  b.each_char do |ch|
      b_count[ch] += 1
  end

  count = 0
  ('a'..'z').each do |ch|
      count += (a_count[ch] - b_count[ch]).abs
  end

  p count
end

anagrams('cde', 'abc') # == 4
anagrams('racecar', 'carshow') # == 8