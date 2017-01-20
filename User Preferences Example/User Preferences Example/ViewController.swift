//
//  ViewController.swift
//  User Preferences Example
//
//  Created by Francisco Ioneiton da Silva on 19/01/17.
//  Copyright © 2017 Francisco Ioneiton da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //UserDefaults.standard.set("Black"  , forKey: "ColorBAckground")
        //let color = UserDefaults.standard.object(forKey: "ColorBAckground")
       // var city: [String] = ["New York", "Panamá City","Sao Paulo"]
        UserDefaults.standard.removeObject(forKey: "city")
        //UserDefaults.standard.set(city, forKey: "city")
        let cityRetrived = UserDefaults.standard.object(forKey: "city")
        
        
        print(cityRetrived)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

