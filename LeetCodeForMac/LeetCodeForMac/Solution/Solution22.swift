//
//  Solution22.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/5/17.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

class Solution22 {
    
    func generateParenthesis(_ n: Int) -> [String] {
        
        var results = [String]()
        func recursive(left: Int,right: Int, current: String) {
            if right > 0 {
                if left > 0 {
                    recursive(left: left - 1, right: right, current: current + "(")
                }
                if right > left {
                    recursive(left:left, right: right - 1, current: current + ")")
                }
            } else {
                results.append(current)
            }
        }
        
        recursive(left: n, right: n, current: "")
        
        return results
    }
    
}
