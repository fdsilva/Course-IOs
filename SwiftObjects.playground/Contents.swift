//: Playground - noun: a place where people can play

import UIKit

// Creating a class

class House {
    //attribut
    var color: String
    //constructor
    init (color: String){
        self.color = color
    }
    
    func getColor () -> String{
        return self.color;
    }
}

//creating object

var houseOb = House(color: "Blue")

houseOb.getColor()

class Cat {
    
    //
    var color: String
    
    init(color: String){
        self.color = color
    }
    
    func run() -> String{
        return "It's running now"
    }
    
    func meow() -> String{
        return "Meow!!"
        
    }
}

var cat = Cat(color: "Cow's color")

cat.meow()

cat.run()