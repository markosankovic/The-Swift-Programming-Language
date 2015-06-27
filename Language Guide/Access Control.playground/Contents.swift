//: Playground - noun: a place where people can play

import UIKit

// Modules and Source Files

// Access Levels

// Guiding Principles of Access Levels

// Default Access Levels

// Access Levels for Single-Target Apps

// Access Levels for Frameworks

// Access Control Syntax

public class SomePublicClass {}
internal class SomeInternalClass {}
private class SomePrivateClass {}

public var somePublicVariable = 0
internal let someInternalConstant = 0
private func somePrivateFunc() {}

class SomeInternalClassImplicit {}
var someInternalVariableImplicit = 0

// Custom Types

public class SomePublicClass1 {          // explicitly public class
    public var somePublicProperty = 0    // explicitly public class member
    var someInternalProperty = 0         // implicitly internal class member
    private func somePrivateMethod() {}  // explicitly private class member
}

class SomeInternalClass1 {               // implicitly internal class
    var someInternalProperty = 0         // implicitly internal class member
    private func somePrivateMethod() {}  // explicitly private class member
}

private class SomePrivateClass1 {        // explicitly private class
    var somePrivateProperty = 0          // implicitly private class member
    func somePrivateMethod() {}          // implicitly private class member
}

// Tuple Types

// Function Types

private func someFunc() -> (SomeInternalClass, SomePrivateClass) {
    // function implementation goes here
    return (SomeInternalClass(), SomePrivateClass())
}

// Enumeration Types

public enum CompassPoint {
    case North
    case South
    case East
    case West
}

// Raw Values and Associated Values

// Nested Types

// Subclassing

public class A {
    private func someMethod() {}
}

internal class B: A {
    override internal func someMethod() {
        super.someMethod()
    }
}

// Constants, Variables, Properties and Subscripts

private var privateInstance = SomePrivateClass()

// Getters and Setters

struct TrackedString {
    private(set) var numberOfEdits = 0
    var value: String = "" {
        didSet {
            numberOfEdits++
        }
    }
}

var stringToEdit = TrackedString()
stringToEdit.value = "This string will be tracked."
stringToEdit.value += " This edit will increment numberOfEdits."
stringToEdit.value += " So will this one."
println("The number of edits is \(stringToEdit.numberOfEdits)")

// Initializers

// Protocols
