//
//  Solution206.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/27.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation


// 206. 反转链表
// https://leetcode-cn.com/problems/reverse-linked-list/submissions/

class Solution206 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        let node = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return node
    }
    
    func reverseList2(_ head: ListNode?) -> ListNode? {
        
        var pre: ListNode?
        var head = head
        
        while head != nil {
            let temp = head?.next
            head?.next = pre
            pre = head
            head = temp
        }
        return pre
    }
}
