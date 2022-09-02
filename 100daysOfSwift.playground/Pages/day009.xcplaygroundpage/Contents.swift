//: [Previous](@previous)

import Foundation

// -> Initializers

struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
// var user = User(username: "twostraws")
var user = User()
user.username = "twostraws"

// -> Referring to the current instance

struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

// -> Lazy properties

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var mark = Person2(name: "Mark")
mark.familyTree

// -> Static properties and methods

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")
Student.classSize

// -> Access control

struct Person3 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}
var p = Person3(id: "123")
// p.id -> 'id' is inaccessible due to 'private' protection level



//: [Next](@next)
