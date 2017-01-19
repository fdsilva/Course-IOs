//
//  ViewController.swift
//  Alerts
//
//  Created by Francisco Ioneiton da Silva on 17/01/17.
//  Copyright © 2017 Francisco Ioneiton da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func openAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Warning", message: "There are books on the floor socks on the table shes on the bad", preferredStyle: .actionSheet)
        
        let actionConfirm = UIAlertAction(title: "Close", style: .default, handler: nil)
        //handler works to add a action
        let actionCancel = UIAlertAction(title: "Cancel", style: .destructive, handler:nil)
        alertController.addAction(actionCancel)
        alertController.addAction(actionConfirm)
        
        //utilize present on swift 3
        present(alertController, animated: true, completion: nil)
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

