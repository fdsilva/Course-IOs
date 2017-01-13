//
//  DetailViewController.swift
//  Sharing_Data_Between_Screens
//
//  Created by MacBook Pro on 12/01/17.
//  Copyright © 2017 MobilliaApps. All rights reserved.
//

import Foundation
import UIKit


class DetailViewController: UIViewController {
    
    @IBOutlet weak var tc_received: UILabel!
    var received: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tc_received.text = received
    }
    //Works similar as onclickView of android
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
