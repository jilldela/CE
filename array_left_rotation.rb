# Given an array of n integers and a number, d, perform d left rotations on the array. 
# Then print the updated array as a single line of space-separated integers.

# Sample Input
# n = number of integers (5)
# k = num of rotations to perform (4)

# 5 4
# 1 2 3 4 5

# Sample Output
# 5 1 2 3 4

def left_rotate(a, n, k)
  rotations = k % n

  while rotations > 0
    a.push(a.shift)
    rotations -= 1
  end

  a.each { |num| print "#{num} " }
end
