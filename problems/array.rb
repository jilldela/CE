# Write a function that takes an array of integers and returns their sum. 
# Use recursion.

def sum_rec(arr)
  return 0 if arr.empty?

  arr[0] + sum_rec(arr[1..-1])
end

# p sum_rec( [1, 2, 3] ) # == 6
# p sum_rec( [-1, 5, 7, -3] ) # == 8

# ------------------------------

# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# Given nums = [2, 7, 11, 15], target = 9,
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

# def two_sum(nums, target)
#   nums.each_with_index do |num, idx|
#     remainder = target - num
    
#     i = 0
#     next if i == idx
    
#     while i < nums.length
#       if nums[i] == remainder
#           return [idx, i]
#       end
#       i += 1
#     end
#   end
# end

# BAD implementation because inefficient
# O(n ^ 2)

def two_sum(nums, target)
  ind = {}

  nums.each_with_index do |num, idx|
    ind[num] = idx
  end
  
  nums.each_with_index do |num, idx|
    remainder = target - num
    if ind[remainder] && ind[remainder] != idx
      return [idx, ind[remainder]]
    end
  end
end

p two_sum([1, 3, 5, 7], 10) # == 1, 3
