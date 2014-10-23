//
//  SurgeAddTests.swift
//  SurgeStudy
//
//  Created by adachi.yuichi on 2014/10/22.
//  Copyright (c) 2014年 yad. All rights reserved.
//

import XCTest
import Surge

class SurgeAddTests: XCTestCase {
    
    var doubleList: [Double] = [Double]()
    
    override func setUp() {
        super.setUp()
        
        let largeNumber = 1000000
        let list = [Int](1...largeNumber)
        doubleList = list.map {i in Double(i)}
    }

    func testSurgeAdd() {
        self.measureBlock {
            let add = Surge.add(self.doubleList, self.doubleList)
        }
    }
    
    func testNativeAdd() {
        self.measureBlock {
            let add = map(Zip2(self.doubleList, self.doubleList), +)
        }
    }
}
