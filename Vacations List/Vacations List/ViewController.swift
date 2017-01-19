//
//  ViewController.swift
//  Vacations List
//
//  Created by Francisco Ioneiton da Silva on 17/01/17.
//  Copyright © 2017 Francisco Ioneiton da Silva. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var places: [String] = ["New York City","Orlando City","Panama City","São Paulo","Rio de Janeiro"]
    
    var placesDetails: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadDetails()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //TableViewController Methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let mainCell = "mainCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: mainCell, for: indexPath)
        cell.textLabel?.text = places[indexPath.row]
        return cell
    }
    //handle row clicj
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //remove selected effect
        tableView.deselectRow(at: indexPath, animated: true)
        print(placesDetails[indexPath.row])
        let alert = UIAlertController(title: "Places", message: placesDetails[indexPath.row], preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(confirmAction)
        present(alert, animated: true, completion: nil)
    }
    
    //Loading details data
    func loadDetails(){
        placesDetails.append("The City of New York, often called New York City or simply New York, is the   most populous city in the United States.[9] With an estimated 2015 population of 8,550,405[1] distributed over a land area of just 305 square miles (790 km2)")
        placesDetails.append("You visit Orlando city between 11-15-2016 and 11-19-2016")
        placesDetails.append("You visit Panama city  11-09-2016")
        placesDetails.append("You visit São Paulo  at 11-09-2016")
        placesDetails.append("You visit Rio de janeiro  at 11-21-2016")
        
    }
}

