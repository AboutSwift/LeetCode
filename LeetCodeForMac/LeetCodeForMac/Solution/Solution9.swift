//
//  Solution9.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/27.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 9. 回文数 
// https://leetcode-cn.com/problems/palindrome-number/

class Solution9 {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        
        var newX = x
        var value = 0
        while newX > 0 {
            value = newX % 10 + value * 10
            newX /= 10
        }
        return x == value || x == value/10
    }
}
