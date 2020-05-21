//
//  Solution20.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/5/17.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 20. 有效的括号
// https://leetcode-cn.com/problems/valid-parentheses/

class Solution20 {
    
    func isValid(_ s: String) -> Bool {
        var stacks = [String]()
        for c in s {
            if c == "(" {
                stacks.append(")")
            }else if c == "[" {
                stacks.append("]")
            }else if c == "{" {
                stacks.append("}")
            }else if stacks.isEmpty || String(c) != stacks.removeLast() {
                return false
            }
        }
        return stacks.isEmpty
    }
}
