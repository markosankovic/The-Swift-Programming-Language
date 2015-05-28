//: Playground - noun: a place where people can play

import UIKit

// Closure Expressions

// The Sorted Function

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = sorted(names, backwards)

// Closure Expression Syntax

reversed = sorted(names, { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

reversed = sorted(names, { (s1: String, s2: String) -> Bool in return s1 > s2 })

// Inferring Type From Context

reversed = sorted(names, { s1, s2 in return s1 > s2 })

// Implicit Returns from Single-Expression Closures

reversed = sorted(names, { s1, s2 in s1 > s2 })

// Shorthand Argument Names

reversed = sorted(names, { $0 > $1 })

// Operator Functions

reversed = sorted(names, >)

// Trailing Closures

func someFunctionThatTakesAClosure(closure: () -> ()) {
    // function body goes here
}

someFunctionThatTakesAClosure({
    // here's how you call this function without using a trailing closure
})

someFunctionThatTakesAClosure() {
    // here's how you call this function with a trailing closure instead
}

reversed = sorted(names) { $0 > $1 }

let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map {
    (var number) -> String in
    var output = ""
    while number > 0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}
// strings is inferred to be of type [String]
println(strings)

// Capturing Values

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()

incrementByTen()

// Closures Are Reference Types

let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()


