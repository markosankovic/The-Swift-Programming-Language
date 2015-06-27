//: Playground - noun: a place where people can play

import UIKit

// Bitwise Operators

// Bitwise NOT Operator

let initialBits: UInt8 = 0b00001111
let invertedBits = ~initialBits

// Bitwise AND Operator

let firstSixBits: UInt8 = 0b11111100
let lastSixBits: UInt8 = 0b001111111
let middleFourBits = firstSixBits & lastSixBits

// Bitwise OR Operator

let someBits: UInt8 = 0b10110010
let moreBits: UInt8 = 0b01011110
let combinedBits = someBits | moreBits

// Bitwise XOR Operator

let firstBits: UInt8 = 0b00010100
let otherBits: UInt8 = 0b00000101
let outputBits = firstBits ^ otherBits // 00010001

// Bitwise Left and Right Shift Operators

// Shifting Behavior for Unsigned Integers

let shiftBits: UInt8 = 4 // 00000100
shiftBits << 1
shiftBits << 2
shiftBits << 5
shiftBits << 6
shiftBits >> 2

let pink: UInt32 = 0xCC6699
let redComponent = (pink & 0xFF0000) >> 16 // redComponent is 0xCC, or 204
let greenComponent = (pink & 0x00FF00) >> 8 // greenComponent is 0x66, or 102
let blueComponent = pink & 0x0000FF // blueComponent is 0x99, or 153

// Shifting Behavior for Signed Integers

4 // signed [0]0000100
-4 // signed [1]1111100

// Overflow Operators

var potentialOverflow = Int16.max
// potentialOverflow += 1

// Value Overflow

var unsignedOverflow = UInt8.max
unsignedOverflow = unsignedOverflow &+ 1

unsignedOverflow = UInt8.min
unsignedOverflow = unsignedOverflow &- 1

var signedOverflow = Int8.min
signedOverflow = signedOverflow &- 1

// Precedence and Associativity

2 + 3 * 4 % 5

// Operator Functions

struct Vector2D {
    var x = 0.0, y = 0.0
}

func + (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y + right.y)
}

let vector = Vector2D(x: 3.0, y: 1.0)
let anotherVector = Vector2D(x: 2.0, y: 4.0)
let combinedVector = vector + anotherVector

// Prefix and Postfix Operators

prefix func - (vector: Vector2D) -> Vector2D {
    return Vector2D(x: -vector.x, y: -vector.y)
}

let positive = Vector2D(x: 3.0, y: 4.0)
let negative = -positive
let alsoPositive = -negative

// Compound Assignment Operators

func += (inout left: Vector2D, right: Vector2D) {
    left = left + right
}

var original = Vector2D(x: 1.0, y: 2.0)
let vectorToAdd = Vector2D(x: 3.0, y: 4.0)
original += vectorToAdd

prefix func ++ (inout vector: Vector2D) -> Vector2D {
    vector += Vector2D(x: 1.0, y: 1.0)
    return vector
}

var toIncrement = Vector2D(x: 3.0, y: 4.0)
let afterIncrement = ++toIncrement

// Equivalence Operators

func == (left: Vector2D, right: Vector2D) -> Bool {
    return (left.x == right.x) && (left.y == right.y)
}

func != (left: Vector2D, right: Vector2D) -> Bool {
    return !(left == right)
}

let twoThree = Vector2D(x: 2.0, y: 3.0)
let anotherTwoThree = Vector2D(x: 2.0, y: 3.0)
if twoThree == anotherTwoThree {
    println("These two vectors are equivalent.")
}

// Custom Operators

prefix operator +++ {}

prefix func +++ (inout vector: Vector2D) -> Vector2D {
    vector += vector
    return vector
}

var toBeDoubled = Vector2D(x: 1.0, y: 4.0)
let afterDoubling = +++toBeDoubled

// Precedence and Associativity for Custom Infix Operators

infix operator +- { associativity left precedence 140 }

func +- (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y - right.y)
}

let firstVector = Vector2D(x: 1.0, y: 2.0)
let secondVector = Vector2D(x: 3.0, y: 4.0)
let plusMinusVector = firstVector +- secondVector


