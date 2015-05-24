//: Playground - noun: a place where people can play

import UIKit

// Declaring Constants and Variables

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

// Type Annotations

var welcomeMessage: String

welcomeMessage = "Hello"

var red, green, blue: Double

// Naming Constants and Variables

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

let languageName = "Swift"
// languageName = "Swift++"

// Printing Constants and Variables

println(friendlyWelcome)

println("This is a string")

println("The current value of friendlyWelcome is \(friendlyWelcome)")

// Comments

// this is a comment

/* this is also a comment,
but written over multiple lines */

// Semicolons

let cat = "🐱"; println(cat)

// Integers

let minValue = UInt8.min
let maxValue = UInt8.max

// Type Safety and Type Inference

let meaningOfLife = 42
// meaningOfLife is inferred to be of type Int

let pi = 3.14159
// pi is inferred to be of type Double

let anotherPi = 3 + 0.14159
// anotherPi is also inferred to be of type Double

// Numeric Literals

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// Numeric Type Conversion

// let cannotBeNegative: UInt8 = -1

// let tooBig: Int8 = Int8.max + 1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi2 = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi2)

// Type Aliases

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.max

// Booleans

let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    println("Mmm, tasty turnips!")
} else {
    println("Eww, turnips are horrible.")
}

/*
let i = 1
if i {
    // this example will not compile, and will report an error
}
*/

let i = 1
if i == 1 {
    // this example will compile successfully
}

// Tuples

let http404Error = (404, "Not Found")

let (statusCode, statusMessage) = http404Error
println("The status code is \(statusCode)")
println("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
println("The status code is \(justTheStatusCode)")

println("The status code is \(http404Error.0)")
println("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
println("The status code is \(http200Status.statusCode)")
println("The status message is \(http200Status.description)")

// Optionals

let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()
// convertedNumber is inferred to be of type "Int?", or "optional Int"

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?
// surverAnswer is automatically set to nil

if convertedNumber != nil {
    println("convertedNumber contains some integer value.")
}

// forced unwrapping
if convertedNumber != nil {
    println("convertedNumber has an integer value of \(convertedNumber!)")
}

// optional binding
if let actualNumber = possibleNumber.toInt() {
    println("\'\(possibleNumber)' has an integer value of \(actualNumber)")
} else {
    println("\'\(possibleNumber)' could not be converted to an integer")
}

// implicityly unwrapped optionals
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark
let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark

if assumedString != nil {
    println(assumedString)
}

if let definiteString = assumedString {
    println(definiteString)
}

// Assertions

let age = -3
assert(age >= 0, "A person's age cannot be less than zero")
