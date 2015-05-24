//: Playground - noun: a place where people can play

import UIKit

// Assignment Operator

let b = 10
var a = 5
a = b

let (x, y) = (1, 2)

/*
if x = y {
    // this is not valid, because x = y does not return a value
}
*/

// Arithmetic Operator

1 + 2
5 - 3
2 * 3
10.0 / 2.5

"hello, " + "world"

9 % 4
-9 % 4
9 % -4

8 % 2.5

var i = 0
++i

var a2 = 0
let b2 = ++a2
// a2 and b2 are now both equal to 1
let c2 = a2++
// a2 is now equal to 2, but c2 has been set to the preincrement value of 1

let three = 3
let minusThree = -three
let plusThree = -minusThree

let minusSix = -6
let alsoMinusSix = +minusSix

// Compound Assignment Operator

var a3 = 1
a3 += 2

// Comparison Operators

1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

let name = "world"
if name == "world" {
    println("hello, world")
} else {
    println("I'm sorry \(name), but I don't recognize you")
}

// Ternary Conditional Operator

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

// Nil Coalescing Operator

// a != nil ? a! : b

// short-circuit evaluation

let defaultColorName = "red"
var userDefinedColorName: String? // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName

// Range Operators

// closed range operator
for index in 1...5 {
    println("\(index) times 5 is \(index * 5)")
}

// half-open range operator
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    println("Person \(i + 1) is called \(names[i])")
}

// Logical Operators

let allowedEntry = false
if !allowedEntry {
    println("ACCESS DENIED")
}

// logical AND operator (short-circuit evaluation)
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    println("Welcome!")
} else {
    println("ACCESS DENIED")
}

// logical OR operator
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    println("Welcome!")
} else {
    println("ACCESS DENIED")
}

// combining logical operators
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    println("Welcome!")
} else {
    println("ACCESS DENIED")
}

// explicit parentheses
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    println("Welcome!")
} else {
    println("ACCESS DENIED")
}
