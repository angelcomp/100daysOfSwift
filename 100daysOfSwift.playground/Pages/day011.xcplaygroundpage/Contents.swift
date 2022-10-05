//: [Previous](@previous)

import Foundation

//Protocols
protocol Identifiable {
    var id: String { get }
//    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}
let user = User(id: "13")

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

displayID(thing: user)

// Protocol inheritance

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

//We can now create a single Employee protocol that brings them together in one protocol
protocol Employee: Payable, NeedsTraining, HasVacation { }

// Extensions
//Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do
extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared()

//Swift doesn’t let you add stored properties in extensions, so you must use computed properties instead.
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

number.isEven

//Protocol extensions
//Swift’s arrays and sets both conform to a protocol called Collection, so we can write an extension to that protocol to add a summarize() method to print the collection neatly
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}
pythons.summarize()
beatles.summarize()

//Protocol-oriented programming

protocol Identifiable2 {
    var id: String { get set }
    func identify() 
}

extension Identifiable2 {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User2: Identifiable2 {
    var id: String
}

let twostraws = User2(id: "twostraws")
twostraws.identify()



//: [Next](@next)
