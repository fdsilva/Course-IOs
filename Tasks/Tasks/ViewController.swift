//
//  ViewController.swift
//  Tasks
//
//  Created by Francisco Ioneiton da Silva on 22/01/17.
//  Copyright © 2017 Francisco Ioneiton da Silva. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var tasks: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadTasks()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
       self.loadTasks()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if(editingStyle == UITableViewCellEditingStyle.delete){
            let taskUserDefault = TaskUserDefaults()
            taskUserDefault.removeTask(index: indexPath.row)
            self.loadTasks()
             tableView.reloadData()
        }
    }

    func loadTasks(){
        let tasksUser = TaskUserDefaults()
        tasks = tasksUser.listTasks()
        //tableView.reloadData()
    }

}

