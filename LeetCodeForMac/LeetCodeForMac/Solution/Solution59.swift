//
//  Solution.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/22.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation


class Solution59 {
    func generateMatrix(_ n: Int) -> [[Int]] {
        
        // 生成一个 n*n 的二维数组，以 0 初始化。
        var result = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
        
        var c = 1,j = 0
        while c <= n*n {
            
            for y in j..<n-j { // (0,0) -> (n,0)
                result[j][y] = c; c += 1
            }
            for x in j+1..<n-j { // (n,0) -> (n,n)
                result[x][n-j-1] = c; c += 1
            }
            for y in stride(from: n-j-2, through: j, by: -1) { // (n,n) -> (0,n)
                result[n-j-1][y] = c; c += 1
            }
            for x in stride(from: n-j-2, to: j, by: -1) { // (n,0) -> (0,0)
                result[x][j] = c; c += 1
            }
            j += 1
        }
        return result
    }
}
