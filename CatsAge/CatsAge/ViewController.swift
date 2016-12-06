 //
//  ViewController.swift
//  CatsAge
//
//  Created by MacBook Pro on 04/12/16.
//  Copyright © 2016 MobilliaApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var isertAge: UITextField!

    @IBOutlet weak var labelResult: UILabel!
    
    var textPrefix = "Your cat age is ";
    var textSufix = " Human years";
   
    // Act like onCreate on Android
    override func viewDidLoad() {
        super.viewDidLoad()
        //Shows a message on console
        print("Meu primeiro APP");
        
    }
    
    @IBAction func findOutAge(_ sender: Any) {
        
        var catAge = Int(isertAge.text!)!;
        
        // Checking cats age to calculate humans years
        if catAge == 1 {
            
            labelResult.text = textPrefix + String(catAge * 15) + textSufix;
            
        }else if catAge == 2{
            labelResult.text = textPrefix + String(catAge * 12) + textSufix;
            
        }else if catAge > 2 {
            catAge = catAge - 2;
            labelResult.text = textPrefix + String((catAge * 4) + 24) + textSufix;
        
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

