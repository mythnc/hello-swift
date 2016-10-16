//: Playground - noun: a place where people can play

import UIKit



func isPrime(n: Int) -> Bool {
    if n == 2 {
        return true
    }
    if n % 2 == 0 {
        return false
    }
    
    var i = 3
    let sqrt_n = Int(floor(sqrt(Double(n))))
    while (i <= sqrt_n) {
        if (n % i == 0) {
            return false
        }
        i += 2
    }
    return true
}

var i = 2
var counter = 0
while (i <= 100) {
    if isPrime(n: i) {
        counter += 1
        print("\(counter): \(i)")
    }
    i += 1
}