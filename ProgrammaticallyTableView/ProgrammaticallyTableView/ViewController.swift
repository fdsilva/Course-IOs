//
//  ViewController.swift
//  ProgrammaticallyTableView
//
//  Created by Francisco Ioneiton da Silva on 20/01/17.
//  Copyright © 2017 Francisco Ioneiton da Silva. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "My TabView"
        tableView.register(MyClass.self, forCellReuseIdentifier: "cellId")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return  tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
    }


}

class MyClass: UITableViewCell{
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Ample iten"
        return label
    }()
    
    func setupViews(){
        addSubview(nameLabel)
        addConstraints([NSLayoutConstraint.constraints(withVisualFormat: "H: |[v0]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : nameLabel])])
        
    }
}

