//
//  ResultViewController.swift
//  Rock_paper_scissors
//
//  Created by Francisco Ioneiton da Silva on 16/01/17.
//  Copyright © 2017 Francisco Ioneiton da Silva. All rights reserved.
//

import Foundation
import UIKit


class ResultViewController: UIViewController {

    @IBOutlet weak var tfResult: UILabel!
    @IBOutlet weak var imgResult: UIImageView!
    
    var received: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(received == 0){
            imgResult.image = #imageLiteral(resourceName: "rock")
            tfResult.text = "Rock"
        
        }else if (received == 1){
            imgResult.image = #imageLiteral(resourceName: "paper")
            tfResult.text = "Paper"
            
        }else {
            imgResult.image = #imageLiteral(resourceName: "scessors")
            tfResult.text = "Scissors"
        
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

