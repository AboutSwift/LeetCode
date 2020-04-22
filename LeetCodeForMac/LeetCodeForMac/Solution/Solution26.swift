//
//  Solution26.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/23.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 26. 删除排序数组中的重复项
// https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/
class Solution26 {
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }
        var index = 0
        while (index != nums.count-1) {
            if nums[index] == nums[index+1] {
                nums.remove(at: index)
            }else {
                index += 1
            }
        }
        return nums.count
    }
}
