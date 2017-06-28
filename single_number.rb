def single_number(nums)
    counts = Hash.new(0)
    nums.each {|num| counts[num] += 1}
    counts.select! {|_,v| v < 2 }
    counts.keys
end

nums = [1, 2, 1, 3, 2, 5]
# , return [3, 5]
single_number(nums)