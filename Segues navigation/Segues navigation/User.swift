//
//  User.swift
//  Segues navigation
//
//  Created by Francisco Ioneiton da Silva on 19/01/17.
//  Copyright © 2017 MobilliaApps. All rights reserved.
//

import Foundation

class User {
    
    var username: String
    var email: String
    var password: String
    

    init(username: String, email: String, password: String){
        
        self.username = username
        self.email = email
        self.password = password
    }
}
