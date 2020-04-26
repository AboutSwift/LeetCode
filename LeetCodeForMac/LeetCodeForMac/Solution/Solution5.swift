//
//  Solution5.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/27.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 5. 最长回文子串
// https://leetcode-cn.com/problems/longest-palindromic-substring/

class Solution5 {
    func longestPalindrome(_ s: String) -> String {
        guard s.count > 1 else {
            return s
        }
        
        let chs: [Character] = Array(s)
        var start = 0,end = 0
        
        for i in 0..<s.count {
            let len1 = compareDirection(chs, l: i, r: i)
            let len2 = compareDirection(chs, l: i, r: i+1)
            if max(len1.len, len2.len) > end-start+1 {
                if len1.len > len2.len {
                    start = len1.l
                    end = len1.r
                } else {
                    start = len2.l
                    end = len2.r
                }
            }
            
            if end-start+1 >= (chs.endIndex-i)*2 {
                break
            }
        }
        return String(chs[start...end])
    }
    
    private func compareDirection(_ chs: [Character],
                                  l:Int, r: Int) -> (l:Int,r:Int,len:Int) {
        var left = l,right = r
        while left >= 0 && right < chs.count && chs[left] == chs[right] {
            left -= 1
            right += 1
        }
        return (left+1,right-1,right-left-1)
    }
    
}
