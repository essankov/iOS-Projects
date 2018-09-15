//: Playground - noun: a place where people can play

import UIKit

var health : Int = 100
let maxHealth : Int = 150

let name : String = "Essa"
var c = name.count
var fC = name.first
var lC = name.last

var age : Int = 26
var Age : String = "I'm \(age) years old."

// index
let info : (String, Int) = ("Essa", 26)
let infoName : String = info.0
let infoAge : Int = info.1

//array
var array :[String] = ["Essa", "loooool", "what's up"]


//range
let maxNum = 1...5
for num in maxNum
{
    print(num)
}


//if

let buttonPressed : String = "right"
var playerPosition : Int = 0

if (buttonPressed == "right")
{
    playerPosition += 1
}
else
{
    playerPosition -= 1
}
