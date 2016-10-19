//: Playground - noun: a place where people can play

import UIKit

var str = "Hello"
var newStr = str + " nc!"

for ch in newStr.characters {
    print(ch)
}

// NSString type is powerful than String type
let newTypeStr = NSString(string: newStr)
newTypeStr.substring(to: 5)
newTypeStr.substring(from: 5)

let name = NSString(string: newTypeStr.substring(from: 6)).substring(to: 2)
newTypeStr.substring(with: NSRange(location: 6, length: 2))

if newTypeStr.contains("nc") {
    print("contain my name")
}

// split string
newTypeStr.components(separatedBy: " ")

newTypeStr.uppercased

newTypeStr.lowercased