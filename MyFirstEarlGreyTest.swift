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
    
    let tfAccount: ElementInteraction = EarlGrey.select(elementWithMatcher: grey_accessibilityID("tfAccountID"))
    let btnNext: ElementInteraction = EarlGrey.select(elementWithMatcher: grey_accessibilityID("btnNextID"))
    let btnBackPasswordVC: ElementInteraction = EarlGrey.select(elementWithMatcher: grey_allOfMatchers([grey_accessibilityLabel("Back"), grey_accessibilityTrait(UIAccessibilityTraitButton)]))
    let lblSignIn: ElementInteraction = EarlGrey.select(elementWithMatcher: grey_accessibilityID("lblSignInID"))
    let btnCreateAccount: ElementInteraction = EarlGrey.select(elementWithMatcher: grey_accessibilityID("btnCreateAccountID"))
    
    // For SignUpViewController
    let tfUserName: ElementInteraction = EarlGrey.select(elementWithMatcher: grey_accessibilityID("tfUserNameID"))
    let tfPassword: ElementInteraction = EarlGrey.select(elementWithMatcher: grey_accessibilityID("tfPasswordID"))
    let lblCreateAccount: ElementInteraction = EarlGrey.select(elementWithMatcher: grey_accessibilityID("lblCreateAccountID"))
    
    // PasswordViewController
    let btnSignIn: ElementInteraction = EarlGrey.select(elementWithMatcher: grey_accessibilityID("btnSignInID"))
    let lblEnterPassword: ElementInteraction = EarlGrey.select(elementWithMatcher: grey_accessibilityID("lblEnterPasswordID"))
    let tfPassword2: ElementInteraction = EarlGrey.select(elementWithMatcher: grey_accessibilityID("tfPassword2ID"))
    
    func testBasicSelectionAndAction() {
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("btnNextID")).perform(grey_tap())
        btnBackPasswordVC.perform(grey_tap())
    }
    
    func testBasicSelectionActionAssert() {
        tfAccount.perform(grey_typeText("1234567890")).assert(with: grey_text("1234567890"))
        lblSignIn.perform(grey_tap())
        btnNext.assert(with: grey_sufficientlyVisible())
        btnNext.perform(grey_tap()).assert(with: grey_notVisible())
        btnBackPasswordVC.perform(grey_tap())
    }
    
    func testCreateAccount() {
        // Create account
        btnCreateAccount.perform(grey_tap())
        tfUserName.perform(grey_typeText("anhph5")).assert(with: grey_text("anhph5"))
        lblCreateAccount.perform(grey_tap())
        tfPassword.perform(grey_typeText("1234567890")).assert(with: grey_text("1234567890"))
        lblCreateAccount.perform(grey_tap())
        btnBackPasswordVC.perform(grey_tap())
        
        // Enter account
        tfAccount.perform(grey_typeText("anhph5")).assert(with: grey_text("anhph5"))
        lblSignIn.perform(grey_tap())
        btnNext.perform(grey_tap())
        
        // Enter password
        tfPassword2.perform(grey_typeText("1234567890")).assert(with: grey_text("1234567890"))
        lblEnterPassword.perform(grey_tap())
        btnSignIn.perform(grey_tap())
    }
    
}




