//
//  ViewController.swift
//  Segues navigation
//
//  Created by MacBook Pro on 02/01/17.
//  Copyright © 2017 MobilliaApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "greetingRobot"{
            let destination = segue.destination as! GreetingViewController
            destination.receivedData = tf_username.text
        }
    }

}

