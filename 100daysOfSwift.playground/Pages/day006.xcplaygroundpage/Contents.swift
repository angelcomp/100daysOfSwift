//: [Previous](@previous)

import Foundation

//: DAY SIX - CLOSURES, PART ONE

// -> Creating basic closures

let driving = {
    print("I'm driving my car")
}

driving()

// -> Accepting parameters in a closure

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("London")

// -> Returning values from a closure

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("Rio")
print(message)

// -> Closures as parameters

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

// -> Trailing closure syntax

travel {
    print("I'm driving in my car")
}

//: [Next](@next)
