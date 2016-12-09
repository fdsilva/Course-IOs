//
//  ViewController.swift
//  Phrases of the day
//
//  Created by MacBook Pro on 09/12/16.
//  Copyright © 2016 MobilliaApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    
    @IBAction func newPhrase(_ sender: Any) {
        
        var phrases: [String] = []
        
        phrases.append("It's better to die than lose your life.")
        phrases.append("Grandpa's kite does not go higher anymore")
        phrases.append("darkness falls across the land the midnight hour is close at hand")
        phrases.append("Heigh-ho, Heigh-ho It's home from work we go")
        phrases.append("Tete te tets")
        
        var randomIndex = arc4random_uniform(5)
        labelResult.text = phrases[Int(randomIndex)]
        
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

