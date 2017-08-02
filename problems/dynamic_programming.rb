# Given a 2D binary matrix filled with 0's and 1's, 
# find the largest square containing only 1's and return its area.

# For example, given the following matrix:

# 1 0 1 0 0
# 1 0 1 1 1
# 1 1 1 1 1
# 1 0 0 1 0
# Return 4.

require 'byebug'

def maximal_square(matrix)
    row = matrix.length
    return 0 if row == 0
    col = matrix[0].length
    return 0 if col == 0

    size = Array.new(row) { Array.new(col, 0) }
    
    return matrix[0].chars.map(&:to_i).max if matrix.length == 1
    
    max = 0
    
    matrix.each_index do |i|
        matrix[0].chars.each_index do |j|
            cell = matrix[i][j].to_i

            if i == 0 || j == 0
                size[i][j] = cell
            elsif cell == 1
                size[i][j] = [[size[i - 1][j], size[i][j - 1]].min, size[i - 1][j - 1]].min + 1
            end
            
            max = size[i][j] if max < size[i][j]
        end
    end

    max * max
end

p maximal_square(["10100","10111","11111","10010"])
p maximal_square(["101"])
p maximal_square(["01"])
p maximal_square(["1111","1111","1111"])