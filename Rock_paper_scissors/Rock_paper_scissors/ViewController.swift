//
//  ViewController.swift
//  Rock_paper_scissors
//
//  Created by Francisco Ioneiton da Silva on 15/01/17.
//  Copyright © 2017 Francisco Ioneiton da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "playRock"){
            let ramdonNumber = arc4random_uniform(3)
            let resultViewController = segue.destination as! ResultViewController
            
            resultViewController.received = Int(ramdonNumber)
            
        }
    }

}

