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
  count = {}

  ('a'..'z').each do |ch|
      count[ch] = 0
  end

  a.each_char do |ch|
    count[ch] += 1
  end

  b.each_char do |ch|
      if count[ch] > 0
        count[ch] -= 1
      else
        count[ch] += 1
      end
  end

  p count.values.inject(:+)
end