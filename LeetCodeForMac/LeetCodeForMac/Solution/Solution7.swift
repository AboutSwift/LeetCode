//
//  Solution7.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/25.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 7. 整数反转
// https://leetcode-cn.com/problems/reverse-integer/

class Solution7 {
    
    func reverse(_ x: Int) -> Int {
        
        var num = abs(x)
        var result = 0
        while num > 0 {
            if result > (Int(Int32.max) - num % 10) / 10 {
                return 0
            }
            result = result * 10 + num % 10
            num /= 10
        }
        
        return result * (x >= 0 ? 1:-1)
    }
    
}
