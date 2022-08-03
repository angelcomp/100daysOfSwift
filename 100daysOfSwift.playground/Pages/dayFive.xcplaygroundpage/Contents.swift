//: [Previous](@previous)

import Foundation

//: DAY FOUR - Loops

// -> WRITING FUNCTIONS

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

printHelp()

// -> ACCEPTING PARAMETERS

func square(number: Int) {
    print(number * number)
}

square(number: 6)

// -> RETURNING VALUES

func square2(number: Int) -> Int {
    return number * number
}

let result = square2(number: 8)
print(result)


// -> PARAMETER LABELS

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Tutti")

// -> OMITTING PARAMETER LABELS

func great(_ person: String) {
    print("Hello, \(person)!")
}

great("Tutti")


// -> DEFAULT PARAMETERS

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet("Taylor", nicely: false)

// -> VARIADIC FUNCTIONS

func printNames(names: String...) {
    for name in names {
        print("Hi, \(name).")
    }
}

printNames(names: "Angelica", "Andie", "Angel")

print("Angelica", "Andie", "Angel")

// -> WRITING THOWING FUNCTIONS

enum PasswordError: Error {
    case obvious(error: String)
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious(error: "password == pasword")
    }

    return true
}

//try checkPassword("password")

// -> RUNNING THROWING FUNCTIONS

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// INOUT PARAMETERS

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

//: [Next](@next)
