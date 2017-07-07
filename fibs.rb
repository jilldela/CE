# Given n, complete the fibonacci function so it returns fibonacci(n)

# sample input: 3
# sample output: 2

# test fibonacci(39) => 63245986

def fibonacci(n, fibs = { 0 => 0, 1 => 1 })
  fibs[n - 1] = fibonacci(n - 1, fibs) unless fibs[n - 1]
  fibs[n - 2] = fibonacci(n - 2, fibs) unless fibs[n - 2]
    
  fibs[n - 2] + fibs[n - 1]
end