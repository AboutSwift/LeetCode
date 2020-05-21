//
//  Solution114.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/5/17.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 114. 二叉树展开为链表
// https://leetcode-cn.com/problems/flatten-binary-tree-to-linked-list/submissions/

class Solution114 {
    func flatten(_ root: TreeNode?) {
        
        var node = root
        while node != nil {
            if node?.left != nil {
                var tree = node?.left
                while tree?.right != nil {
                    tree = tree?.right
                }
                tree?.right = node?.right
                node?.right = node?.left
                node?.left = nil
            }
            node = node?.right
        }
    }
}
