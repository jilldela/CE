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