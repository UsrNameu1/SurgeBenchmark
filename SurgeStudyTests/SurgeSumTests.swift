//
//  SurgeStudyTests.swift
//  SurgeStudyTests
//
//  Created by adachi.yuichi on 2014/10/22.
//  Copyright (c) 2014年 yad. All rights reserved.
//

import XCTest
import Surge

class SurgeSumTests: XCTestCase {
    
    var doubleList: [Double] = [Double]()
    
    override func setUp() {
        super.setUp()
        
        let largeNumber = 100
        let list = [Int](1...largeNumber)
        doubleList = list.map {i in Double(i)}
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSurgeSum() {
        self.measureBlock {
            let result = Surge.sum(self.doubleList)
        }
    }
    
    func testNativeSum() {
        self.measureBlock {
            let result = reduce(self.doubleList, 0.0, +)
        }
    }
}
