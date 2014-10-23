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
        
        let largeNumber = 100000
        let list = [Int](1...largeNumber)
        doubleList = list.map {i in Double(i)}
    }
    
    func testSurgeSqrt() {
        self.measureBlock {
            let result = Surge.sqrt(self.doubleList)
        }
    }
    
    func testNativeSqrt() {
        self.measureBlock {
            let result = self.doubleList.map { x in sqrt (x) }
        }
    }
}
