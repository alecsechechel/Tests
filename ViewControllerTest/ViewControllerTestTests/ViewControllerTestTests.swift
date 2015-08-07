//
//  ViewControllerTestTests.swift
//  ViewControllerTestTests
//
//  Created by Alex on 04.08.15.
//  Copyright (c) 2015 oleksii. All rights reserved.
//

import UIKit
import XCTest
import Quick
import Nimble
import ViewControllerTest

class ViewControllerTestTest: QuickSpec {
 
    override func spec() {
        var viewController: ViewController!
        beforeEach {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let navigationController : UINavigationController? = storyboard.instantiateInitialViewController() as? UINavigationController
            viewController =
                storyboard.instantiateViewControllerWithIdentifier(
                    "ViewControllerID") as! ViewController
            UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
            
            // The One Weird Trick!
            XCTAssertNotNil(navigationController?.view)
            XCTAssertNotNil(viewController.view)
//            let _ = navigationController.view
            let _ = viewController.view
        }
        
        describe(".viewDidLoad()") {
            beforeEach {
                // Method #1: Access the view to trigger BananaViewController.viewDidLoad().
            }
            
            it("sets the banana count label to zero") {
                // Since the label is only initialized when the view is loaded, this
                // would fail if we didn't access the view in the `beforeEach` above.
                expect(viewController.label.text).to(equal("0"))
            }
        }
        
        describe("the view") {
            beforeEach {
                // Method #2: Triggers .viewDidLoad(), .viewWillAppear(), and .viewDidAppear() events.
                viewController.beginAppearanceTransition(true, animated: false)
                viewController.endAppearanceTransition()
            }
            // ...
        }
        
        describe(".viewWillDisappear()") {
            beforeEach {
                // Method #3: Directly call the lifecycle event.
                viewController.viewWillDisappear(false)
            }
            // ...
        }
        
        describe("the 'more bananas' button") {
            it("increments the banana count label when tapped") {
                
                viewController.addButton.sendActionsForControlEvents(
                    UIControlEvents.TouchUpInside)
                println(viewController.label.text)
                expect(viewController.label.text).to(equal("10"))
            }
        }
    }
}
