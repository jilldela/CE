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

#  -----------------------------------------------------

# Given a collection of distinct numbers, return all possible permutations.

def permute(nums)
    return [nums] if nums.length <= 1
    
    perms = permute(nums[1..-1])
    
    result = []
    perms.each do |perm|
      nums.length.times do |i|
        result << perm[0...i] + [nums[0]] + perm[i..-1]
      end
    end
    
    result.sort
end

# p permute([1,2,3]) 
# == [
#   [1,2,3],
#   [1,3,2],
#   [2,1,3],
#   [2,3,1],
#   [3,1,2],
#   [3,2,1]
# ]

# ----------------------------------

# Given a set of distinct integers, nums, return all possible subsets.

# Note: The solution set must not contain duplicate subsets.

def subsets(nums)
    return [[]] if nums.length <= 0
    
    subs = subsets(nums[0..-2])
    
    subs.concat(subs.map {|sub| sub += [nums[-1]]})
end

# p subsets([1,2,3]) # == [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]

# ------------------------------

# Given an array of integers, find if the array contains any duplicates. 
# Your function should return true if any value appears at least twice in the array, 
# and it should return false if every element is distinct.

def contains_duplicate(nums)
    set = Hash.new(0)
    nums.each do |num|
        return true if set[num] > 0
        set[num] += 1
    end
    false
end

# ----------------------------

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples(n)
    i = 3
    j = 5

    sum = 0
    while i < n
        sum += i

        i += 3
    end

    while j < n
        sum += j

        j += 5
    end

    sum
end

p multiples(1000)

# -------------------------------------------

# Given an unsorted array of integers, find the length of the longest consecutive elements sequence.

# For example,
# Given [100, 4, 200, 1, 3, 2],
# The longest consecutive elements sequence is [1, 2, 3, 4]. Return its length: 4.

# Your algorithm should run in O(n) complexity.

def longest_consecutive(nums)
    return 0 if nums.empty?
    max, count = 1, 1
    
#     why move count here? why keep track of index?
#     like how you talked about indexing into array
    sorted = nums.sort!
    sorted.each_with_index do |el, idx|
        break if idx == sorted.length - 1
        if sorted[idx + 1] == el + 1
            count += 1 
            max = count if count > max 
        elsif el == sorted[idx + 1]
            next
        else 
            count = 1
        end 
    end 
    max
end