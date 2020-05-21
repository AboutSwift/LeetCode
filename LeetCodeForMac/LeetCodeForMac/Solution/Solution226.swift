//
//  Solution226.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/5/17.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 226. 翻转二叉树
// https://leetcode-cn.com/problems/invert-binary-tree/

class Solution226 {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        let left = invertTree(root.left)
        let right = invertTree(root.right)
        
        root.left = right
        root.right = left
        return root
    }
}
