//
//  Math.swift
//  XcodeServer
//
//  Created by Alex on 01.08.15.
//  Copyright (c) 2015 oleksii. All rights reserved.
//

import Foundation

class Math {
    
    func add(operator1: Int, operator2: Int) -> Int {
        return operator1 + operator2
    }
    
    func multiply(operator1: Int, operator2: Int) -> Int {
        return operator1 * operator2
    }
    
    func divided(operator1: Int, operator2: Int) -> Int {
        return operator1 + operator2
    }
    
    func sqr(operator1: Int) -> Int {
        if operator1 >= 0 {
            return operator1 * operator1
        } else {
            return 0
        }
    }
}

