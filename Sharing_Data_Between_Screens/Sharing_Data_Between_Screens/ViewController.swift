//
//  ViewController.swift
//  Sharing_Data_Between_Screens
//
//  Created by MacBook Pro on 12/01/17.
//  Copyright © 2017 MobilliaApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_Info: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "SendDataDetails"{
            let destinationView = segue.destination as! DetailViewController
            destinationView.received = tf_Info.text
        }
    }


}

