//
//  LeetCodeForMacTests.swift
//  LeetCodeForMacTests
//
//  Created by 晋先森 on 2020/4/22.
//  Copyright © 2020 晋先森. All rights reserved.
//

import XCTest
@testable import LeetCodeForMac

class LeetCodeForMacTests: XCTestCase {

    override func setUp() {
        
    }
    
    
    func testLeedCode59() {
        let result = Solution59().generateMatrix(5)
        print("result = \(result)")
    }
    
    func test695() {
        let grid = [[1,1,0,0,0],[1,1,0,0,0],[0,0,0,1,1],[0,0,0,1,1]]
        let max = Solution695().maxAreaOfIsland(grid)
        
        print("max = \(max)")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
