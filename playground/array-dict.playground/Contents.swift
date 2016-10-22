//: Playground - noun: a place where people can play

import UIKit

// Array
var array = [35, 36, 1, 0]
print(array[0])
print(array.count)
array.append(3)
array.sort()

var ar = [3.87, 7.1, 8.9]
ar.remove(at: 1)
ar.append(ar[0] * ar[1])

let mixAr = [3.5, 3, "hello", false] as [Any]
var strAr = [String]()
strAr.append("3")

// Dictionary
var dict = ["computer": "intel",
"coffee": "energy"]
print(dict["computer"]) // Optional("intel")
print(dict["computer"]!) // intel
// print(dict["error"]!) error

print(dict.count)
dict["phone"] = "samsung"
dict.removeValue(forKey: "coffee")
print(dict)

var charDict = [String: Double]()
charDict["123"] = 12.3

var menuDict = [String: Double]()
menuDict = ["pizza": 10.99, "ice cream": 4.99, "salad": 7.99]
print("The total cost of my meal is \(menuDict["pizza"]! + menuDict["salad"]!)")