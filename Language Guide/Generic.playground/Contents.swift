//: Playground - noun: a place where people can play

import UIKit

func swapTwoInts(inout a: Int, inout b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
println("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

// Generic Functions

func swapToValues<T>(inout a: T, inout b: T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someString = "hello"
var anotherString = "world"
swapToValues(&someString, &anotherString)

println(someString)

// Type Parameters

// Naming Type Parameters

// Generic Types

struct IntStack {
    var items = [Int]()
    mutating func push(item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

struct Stack<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
stackOfStrings.push("cuatro")

let fromTheTop = stackOfStrings.pop()

// Extending a Generic Type

extension Stack {
    var topItem: T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}

if let topItem = stackOfStrings.topItem {
    println("The top item on the stack is \(topItem).")
}

// Type Constraints

// Type Constraint Syntax

/*
func someFunction<T: SomeClass, U: SomeProtocol>(someT: T, someU: U) {
    // function body goes here
}
*/

// Type Constraints in Action

func findStringIndex(array: [String], valueToFind: String) -> Int? {
    for (index, value) in enumerate(array) {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let strings = ["cat", "dog", "llama", "parakeet", "terrapin"]
if let foundIndex = findStringIndex(strings, "llama") {
    println("The index of llama is \(foundIndex)")
}

func findIndex<T: Equatable>(array: [T], valueToFind: T) -> Int? {
    for (index, value) in enumerate(array) {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let doubleIndex = findIndex([3.14159, 0.1, 0.25], 9.3)

let stringIndex = findIndex(["Mike", "Malcolm", "Andrea"], "Andrea")

// Associated Types

protocol Container {
    typealias ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct IntStackContainer: Container {
    // original IntStack implementation
    var items = [Int]()
    mutating func push(item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
    // conformance to the Container protocol
    // typealias ItemType = Int
    mutating func append(item: Int) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Int {
        return items[i]
    }
}

struct StackContainer<T>: Container {
    // original Stack<T> implementation
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
    // conformance to the Container protocol
    mutating func append(item: T) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> T {
        return items[i]
    }
}

// Extending an Existing Type to Specify an Associated Type

extension Array: Container {}

// Where Clauses

func allItemsMatch<C1: Container, C2: Container where C1.ItemType == C2.ItemType, C1.ItemType: Equatable>(someContainer: C1, anotherContainer: C2) -> Bool {
    // check that both containers contain the same number of items
    if someContainer.count != anotherContainer.count {
        return false
    }
    
    // check each pair of items to see if they are equivalent
    for i in 0..<someContainer.count {
        if someContainer[i] != anotherContainer[i] {
            return false
        }
    }
    
    // all items match, so return true
    return true
}

var stackOfStringsContainer = StackContainer<String>()
stackOfStringsContainer.push("uno")
stackOfStringsContainer.push("dos")
stackOfStringsContainer.push("tres")

var arrayOfStringsContainer = ["uno", "dos", "tres"]

if allItemsMatch(stackOfStringsContainer, arrayOfStringsContainer) {
    println("All items match.")
} else {
    println("Not all items match.")
}
