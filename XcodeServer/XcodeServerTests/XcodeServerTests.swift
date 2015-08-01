//
//  XcodeServerTests.swift
//  XcodeServerTests
//
//  Created by Alex on 01.08.15.
//  Copyright (c) 2015 oleksii. All rights reserved.
//

import UIKit
import XCTest

class XcodeServerTests: XCTestCase {
    
    var math = Math()
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddFunction() {
        let num1 = 5
        let num2 = 6
       
        XCTAssertEqual(num1 + num2, math.add(num1, operator2: num2), "Error")
    }
    
}
