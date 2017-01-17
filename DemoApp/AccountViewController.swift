//
//  ViewController.swift
//  DemoApp
//
//  Created by Pham Anh on 1/16/17.
//  Copyright © 2017 Pham Anh. All rights reserved.
//

import UIKit

public let mainStoryboard: String = "Main"

class AccountViewController: UIViewController {
    
    @IBOutlet weak var tfAccount: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func validateAccount(_ sender: Any) {
        let storyboard = UIStoryboard(name: mainStoryboard, bundle: nil)
        let passwordViewController = storyboard.instantiateViewController(withIdentifier:PasswordViewController.storyboardID)
        self.navigationController!.pushViewController(passwordViewController, animated: true)
    }
    
    @IBAction func createAccount(_ sender: Any) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

