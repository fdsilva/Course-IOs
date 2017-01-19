//
//  ViewController.swift
//  Table View Controller
//
//  Created by Francisco Ioneiton da Silva on 17/01/17.
//  Copyright © 2017 Francisco Ioneiton da Silva. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var data: [String] = ["New York City", "Orlando", "City of Panamá", "São Paulo", "Rio Janeiro"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UITableVIewCOntroller Overrided Methots
    
    /* Defines diferents section of data*/
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseCell = "reuseCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseCell, for: indexPath)
        cell.textLabel?.text = data[indexPath.row]//passing indew of a table index row
        
        return cell
    }

}

