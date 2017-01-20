//
//  RegistrationViewController.swift
//  Segues navigation
//
//  Created by Francisco Ioneiton da Silva on 19/01/17.
//  Copyright © 2017 MobilliaApps. All rights reserved.
//

import Foundation
import UIKit

class RegistrationViewController: UIViewController{
    
    @IBOutlet weak var tf_username: UITextField!
    @IBOutlet weak var tf_email: UITextField!
    @IBOutlet weak var tf_password: UITextField!
   
    @IBOutlet weak var tf_password_confirm: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func works(_ sender: Any) {
        
        let username: String = tf_username.text!
        let email: String = tf_email.text!
        var password: String = ""
        
        if tf_password.text == tf_password_confirm.text {
            password = tf_password.text!
            
        }else{
            let alert = UIAlertController(title: "Password didin't match", message: "Please Check your email and try again", preferredStyle: .alert)
            
            let actionAlert = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(actionAlert)
            
            present(alert, animated: true, completion: nil)
        }
        
        let user = User(username: username, email: email, password: password)
        
        UserDefaults.standard.set(user, forKey: "userInfo")        

    }
}
