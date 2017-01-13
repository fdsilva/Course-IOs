//
//  GreetingViewController.swift
//  Segues navigation
//
//  Created by MacBook Pro on 13/01/17.
//  Copyright © 2017 MobilliaApps. All rights reserved.
//

import Foundation
import UIKit

class GreetingViewController: UIViewController {
    var receivedData: String!
    
    @IBOutlet weak var lb_greeting: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lb_greeting.text = "Welcome!! " + receivedData + " \nto:"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
