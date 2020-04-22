//
//  Solution199.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/22.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution199 {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        
        var queue = [Int]()
        
        func queryNode(_ node: TreeNode?, level: Int) {
            guard let node = node else { return }
            
            if level == queue.count {
                queue.append(node.val)
            }
            
            queryNode(node.right, level: level + 1)
            queryNode(node.left, level: level + 1)
        }
        
        queryNode(root, level: 0)
        
        return queue
    }
    
}
