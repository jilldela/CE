# Sample Input
# 3
# 1 2 3

# Sample Output
# Array is sorted in 0 swaps.
# First Element: 1
# Last Element: 3

# The array is already sorted, so 0 swaps take place and we print the necessary three lines of output shown above.

def bubble_sort(a)
  num_swaps = 0
  sorted = false

  while sorted == false
      sorted = true
      
      a.each_index do |i|
          next if i + 1 == a.length
          j = i + 1
          if a[i] > a[j]
              a[i], a[j] = a[j], a[i]
              num_swaps += 1
              sorted = false
          end
      end
  end

  print "Array is sorted in #{num_swaps} swaps.\n"
  print "First Element: #{a.first}\n"
  print "Last Element: #{a.last}\n"
end