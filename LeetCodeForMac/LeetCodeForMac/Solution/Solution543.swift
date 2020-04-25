//
//  Solution543.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/25.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 543. 二叉树的直径
// https://leetcode-cn.com/problems/diameter-of-binary-tree/

class Solution {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        
        guard let root = root else { return 0 }

        let current = maxDepath(root.left) + maxDepath(root.right)
        let sub = max(diameterOfBinaryTree(root.left),
                      diameterOfBinaryTree(root.right))
        
        return max(current, sub)
    }
    
    func maxDepath(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        return max(maxDepath(root.left), maxDepath(root.right)) + 1
    }
}
