//: Playground - noun: a place where people can play

import UIKit

var number: Int
// print(number) error

var number2: Int?
// nil
print(number2)

let userEnteredText = "three"
// nil
let userEnteredInt = Int(userEnteredText)

if let catAge = userEnteredInt {
    print(catAge * 7)
} else {
    // show error msg to user
    print("gg")
}