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

# ^^ BAD implementation because inefficient
# O(n ^ 2)

# BETTER implementation
# O(2n)

# def two_sum(nums, target)
#   ind = {}

#   nums.each_with_index do |num, idx|
#     ind[num] = idx
#   end
  
#   nums.each_with_index do |num, idx|
#     remainder = target - num
#     if ind[remainder] && ind[remainder] != idx
#       return [idx, ind[remainder]]
#     end
#   end
# end

# ONE pass through
# O(n)

def two_sum(nums, target)
  hash = {}
    
    nums.each_with_index do |num, idx|
      remainder = target - num
      if hash[remainder]
        return [hash[remainder], idx]
      else
        hash[num] = idx
      end
    end
end

# p two_sum([1, 3, 5, 7], 10) # == 1, 3
# p two_sum([4,4], 8) # == [0,1]

# -------------------------------------

# Given an array of integers sorted in ascending order, find the starting and ending position of a given target value.

# Your algorithm's runtime complexity must be in the order of O(log n).

# If the target is not found in the array, return [-1, -1].

# For example,
# Given [5, 7, 7, 8, 8, 10] and target value 8,
# return [3, 4].

def search_range(nums, target)
    mid = nums.length / 2
    
    left = bsearch(nums[0..mid], target)
    
    right = bsearch(nums[mid..-1], target)
    right = mid + right if right != -1
    
    [left, right]
end

def bsearch(nums, target)
    mid = nums.length / 2
    left = nums[0...mid]
    right = nums[mid+1..-1]
    
    return -1 if nums.empty?
    
    case target <=> nums[mid]
        when -1
            bsearch(left, target)
        when 0
            return mid
        when 1
            result = bsearch(right, target)
            return result == -1 ? -1 : (mid + 1 + result)
    end
end

p search_range([5, 7, 7, 8, 8, 10], 8)  == [3,4]
p search_range([2,2], 2)  == [0,1]