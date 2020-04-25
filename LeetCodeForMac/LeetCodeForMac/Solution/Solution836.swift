//
//  Solution836.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/25.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 836. 矩形重叠
// https://leetcode-cn.com/problems/rectangle-overlap/

class Solution836 {
    func isRectangleOverlap(_ rec1: [Int], _ rec2: [Int]) -> Bool {
        
        guard rec1.count == 4 && rec2.count == 4 else { return false }
        if rec2[2] <= rec1[0] || rec2[3] <= rec1[1] || rec2[0] >= rec1[2] || rec2[1] >= rec1[3] {
            return false
        }
        return true
    }
}

 
