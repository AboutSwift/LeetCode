//
//  Solution233.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/25.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 223. 矩形面积
// https://leetcode-cn.com/problems/rectangle-area/

class Solution233 {
    func computeArea(_ A: Int, _ B: Int, _ C: Int, _ D: Int, _ E: Int, _ F: Int, _ G: Int, _ H: Int) -> Int {
        let x1 = max(A, E)
        let x2 = min(C, G)
        let y1 = max(B, F)
        let y2 = min(D, H)
        
        let resA = (C-A) * (D-B)
        let resB = (G-E) * (H-F)
        
        if x1<x2 && y1<y2 {
            return resA + resB - (x2-x1)*(y2-y1)
        }else {
            return resA + resB
        }
    }
}
