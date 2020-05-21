//
//  Solution1078.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/5/17.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 1078. Bigram 分词
// https://leetcode-cn.com/problems/occurrences-after-bigram/

class Solution1078 {
    func findOcurrences(_ text: String, _ first: String, _ second: String) -> [String] {
        let components = text.components(separatedBy: " ")
        var results = [String]()
        
        for i in 0..<components.count - 2 {
            if components[i] == first && components[i+1] == second {
                results.append(components[i+2])
            }
        }
        return results
    }
}
