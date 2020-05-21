//
//  Solution56.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/5/17.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 56. 合并区间
// https://leetcode-cn.com/problems/merge-intervals/submissions/

class Solution56 {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard intervals.count > 1 else { return intervals }
        
        let sortResults = intervals.sorted(by: { $0[0] < $1[0] })
        var last = sortResults[0]
        
        var results = [[Int]]()
        for i in 1..<sortResults.count {
            let item = sortResults[i]
            
            if last[1] >= item[0] {
                last[1] = max(last[1], item[1])
            }else {
                results.append(last)
                last = item
            }
        }
        results.append(last)
        return results
    }
}
