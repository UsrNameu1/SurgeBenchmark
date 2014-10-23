//
//  SurgeExpTests.swift
//  SurgeStudy
//
//  Created by adachi.yuichi on 2014/10/23.
//  Copyright (c) 2014年 yad. All rights reserved.
//

import XCTest
import Surge

class SurgePowTests: XCTestCase {

    var bases = [Double]()
    var exponents = [Double]()
    
    override func setUp() {
        super.setUp()
        
        let largeNumber = 1000000
        bases = [Int](1...largeNumber).map { i in Double(i) }
        exponents = [Double](count: largeNumber, repeatedValue: 2.0)
    }
    
    func testSurgePow() {
        self.measureBlock {
            let result = Surge.pow(self.bases, self.exponents)
        }
    }
    
    func testNativePow() {
        self.measureBlock {
            let result = map(Zip2(self.bases, self.exponents), pow)
            
        }
    }
}
