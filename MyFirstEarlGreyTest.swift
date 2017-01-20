//
//  MyFirstEarlGreyTest.swift
//  DemoApp
//
//  Created by Pham Anh on 1/17/17.
//  Copyright © 2017 Pham Anh. All rights reserved.
//

import XCTest
import EarlGrey

typealias ElementInteraction = GREYElementInteraction

class MyFirstEarlGreyTest: XCTestCase {
    
    func testCreateAccount() {
        // Create account
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("btnCreateAccountID")).perform(grey_tap())
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("tfUserNameSignUpID")).perform(grey_typeText("chihuahua")).assert(with: grey_text("chihuahua"))
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("lblCreateAccountID")).perform(grey_tap())
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("tfPasswordID")).perform(grey_typeText("gaogaogao")).assert(with: grey_text("gaogaogao"))
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("lblCreateAccountID")).perform(grey_tap())
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("btnSignUpID")).perform(grey_tap()).assert(with: grey_notVisible())
        
        // Enter account
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("tfAccountID")).perform(grey_typeText("chihuahua")).assert(with: grey_text("chihuahua"))
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("lblSignInID")).perform(grey_tap())
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("btnNextID")).perform(grey_tap())
        
        // Enter password
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("tfPassword2ID")).perform(grey_typeText("gaogaogao")).assert(with: grey_text("gaogaogao"))
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("lblEnterPasswordID")).perform(grey_tap())
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("btnSignInID")).perform(grey_tap())
    }
    
    
}




