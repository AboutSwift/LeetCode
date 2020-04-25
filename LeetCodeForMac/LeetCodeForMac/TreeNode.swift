//
//  TreeNode.swift
//  LeetCodeForMac
//
//  Created by 晋先森 on 2020/4/25.
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
