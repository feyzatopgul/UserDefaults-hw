//
//  ViewController.swift
//  UserDefaults
//
//  Created by fyz on 7/9/18.
//  Copyright © 2018 Feyza Topgul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    
    @IBAction func submitButton(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.setValue(nameField.text, forKey: "name")
        defaults.setValue(emailField.text, forKey: "email")
        defaults.setValue(phoneField.text, forKey: "phone")
        if let name = defaults.string(forKey: "name"){
            nameLabel.text = name
        }
        if let email = defaults.string(forKey: "email"){
            emailLabel.text = email
        }
        if let phone = defaults.string(forKey: "phone"){
            phoneLabel.text = phone
        }
    }
  
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        if let name = defaults.string(forKey: "name"){
            nameLabel.text = name
        }
        if let email = defaults.string(forKey: "email"){
            emailLabel.text = email
        }
        if let phone = defaults.string(forKey: "phone"){
            phoneLabel.text = phone
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

