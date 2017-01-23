//
//  ViewController.swift
//  Click Counter
//
//  Created by Francisco Ioneiton da Silva on 22/01/17.
//  Copyright © 2017 Francisco Ioneiton da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!
    var label_2: UILabel!
    var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label
        var label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.textAlignment = NSTextAlignment.center
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        //label
        var label_2 = UILabel()
        label_2.frame = CGRect(x: 150, y: 130, width: 60, height: 60)
        label_2.textAlignment = NSTextAlignment.center
        label_2.text = "0"
        self.view.addSubview(label_2)
        self.label_2 = label_2
        
        //Button
        var button = UIButton()
        button.frame = CGRect(x: 60, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        self.button = button
        
        //Button
        var button2 = UIButton()
        button2.frame = CGRect(x: 190, y: 250, width: 160, height: 60)
        button2.setTitle("Decrement", for: .normal)
        button2.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button2)
        //self.button = button2
        
        button.addTarget(self, action: "incrementCount", for: UIControlEvents.touchUpInside )
        button2.addTarget(self, action: "dencrementCount", for: UIControlEvents.touchUpInside )
        
        button2.addTarget(self, action: "changeBackrounColor", for: UIControlEvents.touchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.label_2.text = "\(self.count)"
    }
    
    func dencrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.label_2.text = "\(self.count)"
    }
    
    func changeBackrounColor() {
        var colors: [UIColor] = [UIColor.brown,UIColor.black,UIColor.darkGray,UIColor.green,UIColor.blue, UIColor.brown]
        var ramdomIndex = arc4random_uniform(UInt32(colors.count))
       
       view.backgroundColor = colors[Int(ramdomIndex)]
    }

}

