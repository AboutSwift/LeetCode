//
//  Solution409.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/25.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 409. 最长回文串
// https://leetcode-cn.com/problems/longest-palindrome/

class Solution409 {
    func longestPalindrome(_ s: String) -> Int {
        guard s.count > 0 else { return 0 }

        var chars = [Character]()
        for c in s {
            if let index = chars.firstIndex(of: c) {
                chars.remove(at: index)
            }else {
                chars.append(c)
            }
//            print("s = \(chars)")
        }
        
        return chars.isEmpty ? s.count: (s.count - chars.count) + 1
    }
}
