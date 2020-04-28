//
//  Solution237.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/27.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

// 237. 删除链表中的节点
// https://leetcode-cn.com/problems/delete-node-in-a-linked-list/submissions/
class Solution237 {
    func deleteNode(_ node: ListNode?) {
        if let node = node,let next = node.next {
            node.val = next.val
            node.next = next.next
        }
    }
}

