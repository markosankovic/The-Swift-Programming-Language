//: Playground - noun: a place where people can play

import UIKit

// Comparing Classes and Structures

class SomeClass {
    // class definition goes here
}

struct SomeStructure {
    // structure definition goes here
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

// Class and Structure Instances

let someResolution = Resolution()
let someVideoMode = VideoMode()

// Acessing Properties

println("The width of someResolution is \(someResolution.width)")

println("The width of someVideoMode is \(someVideoMode.resolution.width)")

someVideoMode.resolution.width = 1280
println("The width of someVideoMode is now \(someVideoMode.resolution.width)")

// Memberwise Initializers for Structure Types

let vga = Resolution(width: 640, height: 480)

// Structures and Enumerations Are Value Types

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048

println("cinema is now \(cinema.width) pixels wide")

println("hd is still \(hd.width) pixels wide")

enum CompassPoint {
    case North, South, East, West
}
var currentDirection = CompassPoint.West
let rememberedDirection = currentDirection
currentDirection = .East
if rememberedDirection == .West {
    println("The remembered direction is still .West")
}

// Classes Are Reference Types

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

println("The frameRate property of tenEighty is now \(tenEighty.frameRate)")

// Identity Operators

if tenEighty === alsoTenEighty {
    println("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}

// Choosing Between Classes and Structures

// Assignment and Copy Behavior for Strings, Arrays, and Dictionaries
