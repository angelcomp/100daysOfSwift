//: [Previous](@previous)

import Foundation

//----------------- PROPERTIES ----------------------//

struct Person {
    var clothes: String
    var shoes: String

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
taylor.describe()
other.describe()

//property observers
struct Person2 {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor2 = Person2(clothes: "T-shirts")
taylor2.clothes = "short skirts"

//computed properties
struct Person3 {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
        
    }
}

var fan = Person3(age: 25)
print(fan.ageInDogYears)

//----------------- STATIC PROPERTIES AND METHODS ----------------------//

struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
    
    static func sing() {
        let str = String(repeating: favoriteSong + " ", count: 3)
        print(str)
    }
}

let fan2 = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)
TaylorFan.sing()


//----------------- ACCESS CONTROL ----------------------//

class TaylorFan2 {
    private var name: String?
}

let fan3 = TaylorFan2()
//fan3.name = "Charles"
///error: 'name' is inaccessible due to 'private' protection level


//--------------- POLYMORPHISM AND TYPECASTING ----------------//

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }

    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
}

//TYPECASTING
for album in allAlbums {
    print(album.getPerformance())

    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}

//CONVERTING COMMON TYPESS

//let number = 5
//let text = number as! String
///error: Cast from 'Int' to unrelated type 'String' always fails

let number = 5
let text = String(number)
print(text)


//--------------- CLOSURES ----------------//

// a simple one
let hello = {
    print("Hello, world!")
}

hello()

//with parameters
let helloFriend = { (name: String) -> Void in
    print("Hello, \(name)!")
}

helloFriend("Angelica")

//with parameters and return
let convertInt = { (number: Int) -> String in
    return String(number) + " :)"
}

print(convertInt(5))

//as function parameters
func grabLunch(search: () -> ()) {
  search()
}

// pass closure as a parameter
grabLunch(search: {
   print("Alfredo's Pizza: 2 miles away")
})

//trailing closure
grabLunch {
    print("Alfredo's Pizza: 2 miles away")
}


// autoclosure: without using {}
//grabLunch(search: print("Alfredo's Pizza: 2 miles away"))
/// error: Cannot convert value of type '()' to expected argument type '() -> ()'

//To pass the closure argument without using braces, we must use the @autoclosure keyword in function definition.
func grabLunch2(search: @autoclosure () -> ()) {
  search()
}


//: [Next](@next)
