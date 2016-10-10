//: Playground - noun: a place where people can play

import UIKit

var array = [8, 4, 8, 1]
for n in array {
    print(n)
}

let names = ["rob", "nc", "eric", "john"]
for name in names {
    print("Hi there \(name)!")
}

for (index, value) in array.enumerated() {
    array[index] += 1
}
print(array)

var seq = [Double]()
seq = [8, 7, 19, 28]
for (i, v) in seq.enumerated() {
    seq[i] /= 2
}
print(seq)