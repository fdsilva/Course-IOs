//: Playground - noun: a place where people can play

import UIKit

class Animal {
    var color = "brown"
    
    func sleep() -> String{
        return "Sleeping"
    }
}
class Dog: Animal{
    func bark() -> String {
        return "Barking"
    }
}

class Bird: Animal{
    func fly() -> String{
        return "Flying"
    }
}

class Parrot: Bird{
    func Repeat() -> String {
        return "Repeating"
    }
}

//dog
var dog = Dog()
dog.sleep()
dog.color

//Bird
var bird = Bird()
bird.fly()
bird.color

//Parrot
var parrot = Parrot()
parrot.fly()
parrot.Repeat()
parrot.color