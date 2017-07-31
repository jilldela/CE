// Given a m x n grid filled with non-negative numbers, 
// find a path from top left to bottom right which minimizes the sum of all numbers along its path.

var minPathSum = function(grid) {
    row = grid.length
    col = grid[0].length
    
    for (let i = 0; i < row; i++) {
        for (let j = 0; j < col; j++) {
            if (i === 0 && j !== 0) grid[i][j] = grid[i][j] + grid[i][j - 1];
            if (i !== 0 && j === 0) grid[i][j] = grid[i][j] + grid[i - 1][j];
            if (i !== 0 && j !== 0) grid[i][j] = grid[i][j] + Math.min(grid[i - 1][j], grid[i][j - 1]);
        } 
    }
    
    return grid[row - 1][col - 1]
};