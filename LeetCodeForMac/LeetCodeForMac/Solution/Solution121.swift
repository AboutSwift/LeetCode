//
//  Solution121.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/23.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 121. 买卖股票的最佳时机
// https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock/
class Solution121 {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        
        var max = 0
        for i in 0..<prices.count {
            for j in i..<prices.count {
                let value = prices[j] - prices[i]
                if value > max {
                    max = value
                }
            }
        }
        return max
    }
}
