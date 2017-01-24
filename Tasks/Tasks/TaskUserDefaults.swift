//
//  TaskUserDefaults.swift
//  Tasks
//
//  Created by Francisco Ioneiton da Silva on 23/01/17.
//  Copyright © 2017 Francisco Ioneiton da Silva. All rights reserved.
//

import UIKit

class TaskUserDefaults {
    let TASK_KEY = "Tasks"
    var tasks: [String] = []
    
    func addTask(task: String){
        //getting tasks
        tasks = listTasks()
        
        tasks.append(task)
        UserDefaults.standard.set(tasks, forKey: TASK_KEY)
    }
    
    func listTasks() -> Array<String>{
        let dataReceived = UserDefaults.standard.object(forKey: TASK_KEY)
        
        if dataReceived != nil {
            return dataReceived as! Array<String>
            
        }else{
           return []
        }
    }
    
    func removeTask(index: Int){
        tasks = listTasks()
        
        tasks.remove(at: index)
        UserDefaults.standard.set(tasks, forKey: TASK_KEY)
        
    }
}
