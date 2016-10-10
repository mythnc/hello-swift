//: Playground - noun: a place where people can play

import UIKit

let age = 13

if age < 18 {
    print("under 18 gg")
} else {
    print("above 18")
}

let name = "ncwu"

if name == "ncwu" {
    print("hi nc")
} else {
    print("hello there")
}

if name == "ncwu" && age >= 20 {
    print("nc, you are above 18")
} else if name == "ncwu" {
    print("nc, you are too young")
}

let username = "test"
let password = "pwd"

if username == "test" && password == "pwd" {
    print("successul login")
} else {
    print("login failed")
}