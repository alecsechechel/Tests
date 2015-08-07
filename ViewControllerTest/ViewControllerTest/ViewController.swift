//
//  ViewController.swift
//  ViewControllerTest
//
//  Created by Alex on 04.08.15.
//  Copyright (c) 2015 oleksii. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {

    @IBOutlet public weak var addButton: UIButton!
    @IBOutlet public weak var label: UILabel!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction public func add(sender: AnyObject) {
        label.text = "10"
    }
}

