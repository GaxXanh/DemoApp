//
//  SignUpViewController.swift
//  DemoApp
//
//  Created by Pham Anh on 1/17/17.
//  Copyright © 2017 Pham Anh. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    public static let storyboardID = "SignUpViewControllerID"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUp (_ sender: Any) {
        self.navigationController!.popViewController(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
