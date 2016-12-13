/*/: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var numero = 1 + 2

//variaveis tipo string
var user = "Xico"
var nome: String = "Xico";
//numero inteiros

var inteiro = 10

var numeroInteiro: Int = 5;

numeroInteiro = numeroInteiro + inteiro;

//Double
var decimalNumber: Double

decimalNumber = 9.4

//Float
var numeroFloat: Float

numeroFloat = 3.1898

//exibiçao
print("Exibindo numero inteiro: " + String(numeroInteiro) + "Double: " + String(decimalNumber))

//Chalenge_1
var num1 : Int = 0;
var num2 : Int = 0;

num1 = 10;
num2 = 20;

var sum: Int = num1 + num2;

print("A soma dos dois numeros é: " + String(sum));

//Arrays
var persons = ["Zé", "Wild Bill","Trump"]
print(persons[2])

var personsNames: [String];
var numbers: [Int] = []

numbers.append(20);
numbers.append(400);

personsNames = ["Obama", "Jackson", "Lincon"]

//chalenge_2
var frases: [String] = ["It's better die instead lose the life","The move walk way exit it's aproaching, please watch your step","Helo, it's me Mario!!"]

print(frases[2])

//Sets "List in java"

var list = Set<String>()

list.insert("Pizza")
list.insert("P")
list.insert("Jaca")
list.insert("B")
list.insert("Av")

//list.insert("Pizza")

print (list)

//dictionary
var animals = [String: String]()

animals["Bear"] = "White and scarry"
animals["Cow"] = "Mr Vaca Vaca"

print(animals["Cow"]!)

//Chalenge
var yearMonths = [Int: String]()

yearMonths[1] = "January"
yearMonths[2] = "February"
yearMonths[3] = "March"
yearMonths[4] = "April"
yearMonths[5] = "May"
yearMonths[6] = "June"
yearMonths[7] = "July"
yearMonths[8] = "August"
yearMonths[9] = "September"
yearMonths[10] = "October"
yearMonths[11] = "November"
yearMonths[12] = "December"

print(yearMonths[1]!)
print(yearMonths[4]!)

var idade: Int

idade = 22
 1 >= 1 || 2 < 2
idade >= 18 && idade <= 26
*/

// LOOPS

// for
/*
for var i in 0..<5 {
    print("Numero " + String(i))
}

var comentarios: [String] = []

comentarios.append("Gostei de tu fueto!!!")
comentarios.append("Tu madre")
comentarios.append("ANcabaiter")

for var c in comentarios{
    print(c)
}*/

var contador: Int = 0;
/*
while contador < 6{
    print(contador)
    contador += 1;
}*/

repeat{
    print("Repeating" + String(contador))
    contador += 1
}while contador < 6