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
  b_dels = (b.chars - a.chars).count
  a_dels = (a.chars - b.chars).count

  p b_dels + a_dels
end