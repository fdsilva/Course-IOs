//: Playground - noun: a place where people can play

import UIKit
//
func multiplicar(numero1: Int, numero2: Int){
    print (numero1 * numero2)
}


multiplicar(numero1: 2, numero2: 3)

//Function with return

func mul(num1: Int, num2: Int) -> Int{
    
    return num1 * num2

}

var test = mul(num1: 3, num2: 2)

test = test + 2

print (test)

//Chalenge

func ageFinder(birth: Int) ->Int{
    
    return 2016 - birth
}

print(ageFinder(birth: 1986))


// Opcionais

var variable: Int = 10

variable = 20

print(variable)

// Contant
let pi: Float = 3.1415
print(pi)

var inteiro: Int?
var total: Int = 0

if let valor2Testado = inteiro {
    total = variable + valor2Testado;
}

print(total)
