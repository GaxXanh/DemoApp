//
//  KIFDemoAppTests.swift
//  KIFDemoAppTests
//
//  Created by Pham Anh on 1/18/17.
//  Copyright © 2017 Pham Anh. All rights reserved.
//

import UIKit
import XCTest



extension XCTestCase {
    func tester(_ file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }
    
    func system(_ file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
}

class KIFDemoAppTests: KIFTestCase {
    
    // Account VC
    let lblSignIn = "lblSignInLbl"
    let tfAccount = "tfAccountLbl"
    let btnNext = "btnNextLbl"
    let btnCreateAccount = "btnCreateAccountLbl"
    
    // Create Account VC (Sign Up View Controller)
    let tfUserName = "tfUserNameLbl"
    let tfPassword = "tfPasswordLbl"
    let btnSignUp = "btnSignUpLbl"
    
    // Password VC
    let lblEnterPassword = "lblEnterPasswordLbl"
    let tfPassword2 = "tfPassword2Lbl"
    let btnSignIn = "btnSignInLbl"
    
    func testCreateAccount() {
        
        // Create account
        tester().tapView(withAccessibilityLabel: btnCreateAccount)
        tester().enterText("chihuahua", intoViewWithAccessibilityLabel: tfUserName)
        XCTAssert((tester().waitForView(withAccessibilityLabel: tfUserName) as! UITextField).text == "chihuahua", "")
        tester().enterText("gaogaogao", intoViewWithAccessibilityLabel: tfPassword)
        XCTAssert((tester().waitForView(withAccessibilityLabel: tfPassword) as! UITextField).text == "gaogaogao", "")
        tester().tapView(withAccessibilityLabel: btnSignUp)
        
        // Enter account
        tester().enterText("chihuahua", intoViewWithAccessibilityLabel: "tfAccountLbl")
        tester().tapView(withAccessibilityLabel: btnNext)
        
        // Enter password
        tester().enterText("gaogaogao", intoViewWithAccessibilityLabel: tfPassword2)
        XCTAssert((tester().waitForView(withAccessibilityLabel: tfPassword2) as! UITextField).text == "gaogaogao", "")
        tester().tapView(withAccessibilityLabel: btnSignIn)
        
    }
    
}
