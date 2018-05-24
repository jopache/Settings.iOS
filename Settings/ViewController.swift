//
//  ViewController.swift
//  Settings
//
//  Created by Jose Pacheco on 5/14/18.
//  Copyright © 2018 Jose Pacheco. All rights reserved.
//

import UIKit
import os.log

class ViewController: UIViewController {
    @IBOutlet var loginTextBox: UITextField!
    @IBOutlet var passwordTextBox: UITextField!
    @IBOutlet var loginResultLabel: UILabel!
    
    let log = OSLog(subsystem: Bundle.main.bundleIdentifier!, category: "View")
    
    @IBAction func login(_ sender: UIButton) {
        let login: String = loginTextBox.text!
        let password: String = passwordTextBox.text!
        
        os_log("test one two three. login: %@ password %@", log: log, login, password)
        
        if login == "admin" && password == "password" {
            loginResultLabel.textColor = UIColor.green
            loginResultLabel.text = "Success"
        } else {
            loginResultLabel.textColor = UIColor.red
            loginResultLabel.text = "Failed"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        os_log("viewDidLoad", log: log)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

