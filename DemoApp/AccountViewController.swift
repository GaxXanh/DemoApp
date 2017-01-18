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
    @IBOutlet weak var btnNext: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tfAccount.text?.removeAll()
    }
    
    @IBAction func validateAccount(_ sender: Any) {
        let storyboard = UIStoryboard(name: mainStoryboard, bundle: nil)
        let passwordViewController = storyboard.instantiateViewController(withIdentifier:PasswordViewController.storyboardID)
        self.navigationController!.pushViewController(passwordViewController, animated: true)
    }
    
    @IBAction func createAccount(_ sender: Any) {
        let storyboard = UIStoryboard(name: mainStoryboard, bundle: nil)
        let signUpViewController = storyboard.instantiateViewController(withIdentifier: SignUpViewController.storyboardID)
        self.navigationController!.pushViewController(signUpViewController, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

