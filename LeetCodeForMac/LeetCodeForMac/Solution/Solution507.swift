//
//  Solution507.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/5/17.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 507. 完美数
// https://leetcode-cn.com/problems/perfect-number/

class Solution507 {
    func checkPerfectNumber(_ num: Int) -> Bool {
        guard num % 2 == 0 else { return false }
        var result = 1
        var i = 2
        while i < num/i  {
            if num % i == 0 {
                result += num/i + i
                //print("i = \(i),result = \(result)") 
            }
            i += 1
        }
        return num == result
    }
}
