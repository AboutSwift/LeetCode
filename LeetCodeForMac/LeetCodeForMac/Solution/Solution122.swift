//
//  Solution122.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/23.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 122. 买卖股票的最佳时机 II
// https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-ii/
class Solution122 {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        
        var max = 0
        for i in 1..<prices.count {
            let p = prices[i] - prices[i-1]
            if p > 0 {
                max += p
            }
        }
        return max
    }
    
}
