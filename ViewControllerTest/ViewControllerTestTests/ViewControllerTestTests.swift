//
//  ViewControllerTestTests.swift
//  ViewControllerTestTests
//
//  Created by Alex on 04.08.15.
//  Copyright (c) 2015 oleksii. All rights reserved.
//

import UIKit
import XCTest



class ViewControllerTestTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main",
            bundle: NSBundle.mainBundle())
        let navigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        let rtest = navigationController.topViewController as! ViewController
        viewController = navigationController.topViewController as! ViewController
        
        UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
        
        // The One Weird Trick!
        let _ = navigationController.view
        let _ = viewController.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testViewControllerViewExists() {
        XCTAssertNotNil(viewController.view, "ViewController should contain a view")
    }
    
}
