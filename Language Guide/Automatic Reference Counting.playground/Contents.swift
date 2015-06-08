//: Playground - noun: a place where people can play

import UIKit

// How ARC Works

// ARC in Action

class Apartment {
    let number: Int
    init(number: Int) {
        self.number = number
        println("Apartment #\(number) is being initialized")
    }
    var tenant: Person?
    deinit {
        println("Apartment #\(number) is being deinitialized")
    }
}

class Person {
    let name: String
    init(name: String) {
        self.name = name
        println("\(name) is being initialized")
    }
    var apartment: Apartment?
    deinit {
        println("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "Foo Bar")

reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil

reference3 = nil

// Strong Reference Cycles Between Class Instances

var john: Person?
var number73: Apartment?

john = Person(name: "John Appleseed")
number73 = Apartment(number: 73)

john!.apartment = number73
number73!.tenant = john

john = nil
number73 = nil

// Resolving Strong Reference Cycles Between Class Instances

// Weak References

class PersonWeak {
    let name: String
    init(name: String) {
        self.name = name
        println("\(name) is being initialized")
    }
    var apartment: ApartmentWeak?
    deinit {
        println("\(name) is being deinitialized")
    }
}

class ApartmentWeak {
    let number: Int
    init(number: Int) {
        self.number = number
        println("ApartmentWeak #\(number) is being initialized")
    }
    weak var tenant: PersonWeak?
    deinit {
        println("ApartmentWeak #\(number) is being deinitialized")
    }
}

var johnWeak: PersonWeak?
var number73Weak: ApartmentWeak?

johnWeak = PersonWeak(name: "Person Weak")
number73Weak = ApartmentWeak(number: 73)

johnWeak!.apartment = number73Weak
number73Weak!.tenant = johnWeak

johnWeak = nil

// Unowned References

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit {
        println("\(name) is being deinitialized")
    }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit {
        println("Card #\(number) is being deinitialized")
    }
}

var johnCustomer: Customer?
johnCustomer = Customer(name: "John Customer")
johnCustomer!.card = CreditCard(number: 1234_5678_9012_3456, customer: johnCustomer!)

johnCustomer = nil

// Unowned References and Implicitly Unwrapped Optional

class Country {
    let name: String
    var capitalCity: City!
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
}

class City {
    let name: String
    unowned let country: Country
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
}

var country = Country(name: "Canada", capitalName: "Ottawa")
println("\(country.name)'s capital city is called \(country.capitalCity.name)")

// Strong Reference Cycles for Closures

class HTMLElement {
    let name: String
    let text: String?
    
    lazy var asHTML: () -> String = {
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        println("\(name) is being deinitialized")
    }
}

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello, world")
println(paragraph!.asHTML())

paragraph = nil

// Resolving Strong Reference Cycles for Closures

/*
lazy var someClosure: (Int, String) -> String = {
    [unowned self, weak delegate = self.delegate!] (index: Int, stringToProcess: String) -> String in
}
*/

class HTMLElementUnowned {
    let name: String
    let text: String?
    
    lazy var asHTML: () -> String = {
        [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }

    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }

    deinit {
        println("\(name) is being deinitialized")
    }
}

var paragraphUnowned: HTMLElementUnowned? = HTMLElementUnowned(name: "p", text: "hello, world")
println("\(paragraphUnowned!.asHTML())")

paragraphUnowned = nil
