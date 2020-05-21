//
//  Solution14.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/29.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 14. 最长公共前缀
// https://leetcode-cn.com/problems/longest-common-prefix/

class Solution14 {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        guard strs.count > 1 else { return strs.first ?? "" }
        var result = strs[0]
        var isRun = true
        
        while isRun {
            for i in 1..<strs.count {
                if strs[i].hasPrefix(result) {
                    isRun = false
                } else {
                    result = String(result.prefix(result.count - 1))
                    isRun = true
                    break
                }
            }
        }
        return result
    }
    
}
