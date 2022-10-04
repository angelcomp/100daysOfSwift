//: [Previous](@previous)

import Foundation

//Creating your own classes

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

var poppy = Dog(name: "Poppy", breed: "Poodle")

//Class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

//Overriding methods

class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle2: Dog2 {
    override func makeNoise() {
        print("Wip!")
    }
}

let poppy2 = Poodle2()
poppy2.makeNoise()

// Final classes
//when you declare a class as being final, no other class can inherit from it
final class myClass {
    
}

//class myOtherClass: myClass { -> error: inheritance from a final class 'myClass'
//
//}

// Copying Objects

class Singer {
    var name = "Taylor Swift"
}

let singer = Singer()
print(singer.name)

var copySiger = singer
copySiger.name = "Katy Perry"

//Because of the way classes work, both singer and singerCopy point to the same object in memory, so when we print the singer name again we’ll see “Katy Perry”:
print(singer.name)


//Deinitializers
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }
    
    //code that gets run when an instance of a class is destroyed
    deinit {
        print("\(name) is no more!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

//Mutability
//if you have a constant class with a variable property, that property can be changed. Because of this, classes don’t need the mutating keyword with methods that change properties; that’s only needed with structs. This difference means you can change any variable property on a class even when the class is created as a constant

class Singer2 {
    var name = "Taylor Swift"
}

let taylor = Singer2()
taylor.name = "Ed Sheeran"
print(taylor.name)


//: [Next](@next)
