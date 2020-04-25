//
//  Solution557.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/25.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 557. 反转字符串中的单词 III
// https://leetcode-cn.com/problems/reverse-words-in-a-string-iii/submissions/

class Solution557 {
    func reverseWords(_ s: String) -> String {
        let components = s.components(separatedBy: " ")
        let result = components.map({ String($0.reversed()) }).joined(separator: " ")
        return result
    }
}
