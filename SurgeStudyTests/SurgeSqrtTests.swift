//
//  SurgeSqrtTests.swift
//  SurgeStudy
//
//  Created by adachi.yuichi on 2014/10/22.
//  Copyright (c) 2014年 yad. All rights reserved.
//

import XCTest
import Surge

class SurgeSqrtTests: XCTestCase {

    var doubleList: [Double] = [Double]()
    
    override func setUp() {
        super.setUp()
        
        let largeNumber = 1000000
        let list = [Int](1...largeNumber)
        doubleList = list.map {i in Double(i)}
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSurgeSqrt() {
        self.measureBlock {
            let result = Surge.sqrt(self.doubleList)
        }
    }
    
    func testNativeSqrt() {
        self.measureBlock {
            let result = sqrt(reduce(self.doubleList, 0) { acc, x in acc + x * x})
        }
    }
}
