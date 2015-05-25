//: Playground - noun: a place where people can play

import UIKit

// Arrays

var someInts = [Int]()
println("someInts is of type [Int] with \(someInts.count) items.")

someInts.append(3)
someInts = []

var threeDoubles = [Double](count: 3, repeatedValue: 0.0)

var anotherThreeDoubles = Array<Double>(count: 3, repeatedValue: 2.5)

var sixDoubles = threeDoubles + anotherThreeDoubles

// array literals

var shoppingList: [String] = ["Eggs", "Milk"]

println("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    println("The shopping list is empty.")
} else {
    println("The shopping list is not empty.")
}

shoppingList.append("Flour")

shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]

shoppingList[0] = "Six eggs"

shoppingList[4...6] = ["Bananas", "Apples"]

shoppingList.insert("Maple Syrup", atIndex: 0)

let mapleSyrup = shoppingList.removeAtIndex(0)

firstItem = shoppingList[0]

let apples = shoppingList.removeLast()

// iterating over an array

for item in shoppingList {
    println(item)
}

for (index, value) in enumerate(shoppingList) {
    println("Item \(index + 1): \(value)")
}

// Sets

var letters = Set<Character>()
println("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
letters = []

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
var favoriteGenres2: Set = ["Rock", "Classical", "Hip hop"]

println("I have \(favoriteGenres.count) favorite music genres.")

if favoriteGenres.isEmpty {
    println("As far as music goes, I'm not picky")
} else {
    println("I have particular music preferences.")
}

favoriteGenres.insert("Jazz")

if let removedGenre = favoriteGenres.remove("Rock") {
    println("\(removedGenre)? I'm over it.")
} else {
    println("I never much cared for that.")
}

if favoriteGenres.contains("Funk") {
    println("I get up on the good foot.")
} else {
    println("It's too funky in here.")
}

// iterating over a set

for genre in favoriteGenres {
    println("\(genre)")
}

for genre in sorted(favoriteGenres) {
    println("\(genre)")
}

// performing set operations

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimes = [2, 3, 5, 7]
sorted(oddDigits.union(evenDigits))
sorted(oddDigits.intersect(evenDigits))
sorted(oddDigits.subtract(singleDigitPrimes))
sorted(oddDigits.exclusiveOr(singleDigitPrimes))

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
houseAnimals.isSubsetOf(farmAnimals)
farmAnimals.isSupersetOf(houseAnimals)
farmAnimals.isDisjointWith(cityAnimals)

5.hash == 5.hash

// Dictionaries

var namesOfIntegers = [Int: String]()
var namesOfIntegers2 = Dictionary<Int, String>()

namesOfIntegers[16] = "sixteen"

namesOfIntegers = [:]

// dictionary literals

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

var airports2 = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

println("The airports dictionary contains \(airports.count) items.")

if airports.isEmpty {
    println("The airports dictionary is empty.")
} else {
    println("The airports dictionary is not empty.")
}

airports["LHR"] = "London"

airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    println("The old value for DUB was \(oldValue).")
}

if let airportName = airports["DUB"] {
    println("The name of the airport is \(airportName).")
} else {
    println("That airport is not in the airports dictionary.")
}

airports["APL"] = "Apple International"
airports["APL"] = nil

if let removedValue = airports.removeValueForKey("DUB") {
    println("The removed airport's name is \(removedValue).")
} else {
    println("The airports dictionary does not contain a value for DUB.")
}

// iterating over a dictionary

for (airportCode, airportName) in airports {
    println("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    println("Airport code: \(airportCode)")
}

for airportName in airports.values {
    println("Aiport name: \(airportName)")
}

let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)
