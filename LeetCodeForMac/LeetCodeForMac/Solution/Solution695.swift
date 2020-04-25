//
//  Solution695.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/25.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 695. 岛屿的最大面积
// https://leetcode-cn.com/problems/max-area-of-island/

class Solution695 {
    
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        
        var maxArea = 0
        var inoutGrid = grid
        
        for i in 0..<inoutGrid.count {
            for j in 0..<inoutGrid[0].count {
                if inoutGrid[i][j] == 1 {
                    maxArea = max(maxArea, maxDepth(grid: &inoutGrid, i: i, j: j))
                }
            }
        }
        
        return maxArea
    }
    
    private func maxDepth(grid: inout [[Int]], i:Int, j:Int) -> Int {
        if i == grid.count || j == grid[0].count || i < 0 || j < 0 {
            return 0
        }else if grid[i][j] == 1 {
            grid[i][j] = 0
            return 1 + maxDepth(grid: &grid, i: i+1, j: j)
                + maxDepth(grid: &grid, i: i-1, j: j)
                + maxDepth(grid: &grid, i: i, j: j+1)
                + maxDepth(grid: &grid, i: i, j: j-1)
        }
        
        return 0
    }
    
}
