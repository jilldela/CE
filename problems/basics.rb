# Pizza Slices
# ----------------------------------------
# You are cutting a gigantic pizza. Given the circumference of the pizza
# and the length of the crust of each slice, return the exact number
# (i.e. potentially including a partial slice up to three decimal places)
# of slices you can cut from that pizza.

def pizza_slices(circumference, crust_length)
  (circumference.to_f / crust_length).round(3)
end

puts "---------Pizza Slices----------"
puts pizza_slices(100, 3) == 33.333
puts pizza_slices(30, 4) == 7.5
puts pizza_slices(5000, 135) == 37.037

