//
//  DemoAppUITests.swift
//  DemoAppUITests
//
//  Created by Pham Anh on 1/20/17.
//  Copyright © 2017 Pham Anh. All rights reserved.
//

import XCTest

class DemoAppUITests: XCTestCase {
    
    override func setUp() {
        XCUIApplication().launch()
    }
    
    func testExample() {
        
        XCUIApplication().buttons["btnCreateAccountID"].tap()
        

    }
    
}


