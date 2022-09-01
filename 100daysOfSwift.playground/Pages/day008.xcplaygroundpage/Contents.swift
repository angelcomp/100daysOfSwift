//: [Previous](@previous)

import Foundation

//: Structs, part one

// -> Creating your own structs

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")

tennis.name = "Lawn Tennis"

// -> Computed properties

struct Sport2 {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

var chessBoxing = Sport2(name: "ChessBoxing", isOlympicSport: false)
chessBoxing.olympicStatus

// -> Property observers

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
        willSet {
            print("preparing...")
        }
    }
}

var prog = Progress(task: "Build project", amount: 10)
prog.amount = 40
prog.amount = 70
prog.amount = 90

// -> Methods

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let city = City(population: 231)
city.collectTaxes()

// -> Mutating methods

struct Person {
    var name: String
    
    mutating func makeAnonnymous() {
        name = "Anonnymous"
    }
}

var me = Person(name: "Angelica")
me.makeAnonnymous()


// -> Properties and methods of strings

let string = "do or do not, there is no try."

string.count
string.capitalized
string.first
string.uppercased()
string.sorted()

// -> Properties and methods of arrays

var toys = ["Woody"]
toys.count

toys.append("Buzz")
toys.firstIndex(of: "Buzz")

toys.sorted()

toys.remove(at: 0)

//: [Next](@next)
