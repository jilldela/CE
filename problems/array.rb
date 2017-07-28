# Write a function that takes an array of integers and returns their sum. 
# Use recursion.

def sum_rec(arr)
  return 0 if arr.empty?

  arr[0] + sum_rec(arr[1..-1])
end

p sum_rec( [1, 2, 3] ) # == 6
p sum_rec( [-1, 5, 7, -3] ) # == 8