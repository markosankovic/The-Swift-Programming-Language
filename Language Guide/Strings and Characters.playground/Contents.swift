//: Playground - noun: a place where people can play

import UIKit

// String Literals

let someString = "Some string literal value"

// Initializing an Empty String

var emptyString = ""

var anotherEmptyString = String()

if emptyString.isEmpty {
    println("Nothing to see here")
}

// String Mutability

var variableString = "Horse"
variableString += " and carriage"

let constantString = "Highlander"
// constantString += " and another Highlander"

// Strings Are Value Types

// Working with Characters

for character in "Dog!🐶" {
    println(character)
}

let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
println(catString)

// Concatenating Strings and Characters

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

let exclamationMark2: Character = "!"
welcome.append(exclamationMark2)

// StringInterpolation

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

// Unicode

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"

let precomposed: Character = "\u{D55C}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"

let enclosedEAcute: Character = "\u{E9}\u{20DD}"

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"

// Counting Characters

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
println("unusualMenagerie has \(count(unusualMenagerie)) characters")

var word = "cafe"
println("the number of characters in \(word) is \(count(word))")

word += "\u{301}"
println("the number of characters in \(word) is \(count(word))")

// Accessing and Modifying a String

let greeting = "Guten Tag"
println(greeting.startIndex)
println(greeting.endIndex)

greeting[greeting.startIndex]

greeting[greeting.startIndex.successor()]
greeting[greeting.endIndex.predecessor()]
let index = advance(greeting.startIndex, 7)
greeting[index]

// greeting.endIndex.successor() // fatal error: can not increment endIndex

for index in indices(greeting) {
    println("\(greeting[index])")
}
println("\n")

var welcome2 = "hello"
welcome2.insert("!", atIndex: welcome2.endIndex)

welcome2.splice(" there", atIndex: welcome2.endIndex.predecessor())

welcome2.removeAtIndex(welcome.endIndex.predecessor())
println(welcome2)

let range = advance(welcome2.endIndex, -6)..<welcome2.endIndex
welcome2.removeRange(range)
println(welcome2)

// Comparing Strings

let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    println("These two strings are considered equal")
}

let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
if eAcuteQuestion == combinedEAcuteQuestion {
    println("These two strings are considered equal")
}

let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
if latinCapitalLetterA != cyrillicCapitalLetterA {
    println("These two characters are not equivalent")
}

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        ++act1SceneCount
    }
}
println("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        ++mansionCount
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        ++cellCount
    }
}
println("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

// Unicode Representations of Strings

let dogString = "Dog‼🐶"

for codeUnit in dogString.utf8 {
    println("\(codeUnit)")
}
println("\n")

for codeUnit in dogString.utf16 {
    println("\(codeUnit)")
}
println("\n")

for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ")
}
println("\n")
