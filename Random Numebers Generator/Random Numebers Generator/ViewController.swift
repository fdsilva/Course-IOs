//
//  ViewController.swift
//  Random Numebers Generator
//
//  Created by MacBook Pro on 07/12/16.
//  Copyright © 2016 MobilliaApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultField: UILabel!
    
    @IBAction func generateNumb(_ sender: Any) {
        var randomNumb = arc4random_uniform(11);
        resultField.text = String(randomNumb);
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

