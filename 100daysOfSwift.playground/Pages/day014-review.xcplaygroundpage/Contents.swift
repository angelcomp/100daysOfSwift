//: [Previous](@previous)

import Foundation

//----------------- FUNCTIONS ----------------------//

func welcome() {
    print("Welcome, friend!")
}

welcome()

func welcome(nome: String) {
    print("Welcome, \(nome)")
}

welcome(nome: "Angelica")

func welcome(nome: String, id: Int) {
    print("Welcome, \(nome), your ID is \(id)")
}

welcome(nome: "Angelica", id: 15)

func countLettersInString(string: String) { print(string.count) }
countLettersInString(string: "Hello")

func countLettersInString(_ string: String) { print(string.count) }
countLettersInString("Hello")

func countLetters(in string: String) { print(string.count) }
countLetters(in: "Hello")

func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
        
    return false
}

if albumIsTaylor(name: "Fearless") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

if albumIsTaylor(name: "Blue") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

//----------------- OPTIONAL ----------------------//

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

//var status: String
//status = getHaterStatus(weather: "rainy")
/// error: value of optional type 'String?' must be unwrapped to a value of type 'String'

var status = getHaterStatus(weather: "rainy")
type(of: status)

if let unwrappedStatus = status {
    // unwrappedStatus contains a non-optional value!
    print(unwrappedStatus)
} else {
    // in case you want an else block, here you go…
}

func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

if let haterStatus = getHaterStatus(weather: "rainy") {
    takeHaterAction(status: haterStatus)
}


//----------------- OPTIONAL CHAINING ----------------------//

print(status?.uppercased())
status = nil
print(status?.uppercased())

print(status?.uppercased() ?? "unknown")

//----------------- ENUMARATION ----------------------//

enum WeatherType {
    case sun, cloud, rain, wind, snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    if weather == .sun {
        return nil
    } else {
        return "Hate"
    }
}

getHaterStatus(weather: .cloud)

//enum with aditional values
enum WeatherType2 {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus2(weather: WeatherType2) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus2(weather: WeatherType2.wind(speed: 5))


//----------------- STRUCTS ----------------------//

struct Person {
    var clothes: String
    var shoes: String
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

print(taylor.clothes)
print(other.shoes)

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

//they have different shoes
print(taylor)
print(taylorCopy)

//Functions inside structs:
struct Person2 {
    var clothes: String
    var shoes: String

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

//----------------- CLASSES ----------------------//

//class Person3 { //class needs init()
//    var clothes: String
//    var shoes: String
//}

class Person4 {
    var clothes: String
    var shoes: String

    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}

class Singer {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sing() {
        print("La la la la")
    }
}

var taylor2 = Singer(name: "Taylor", age: 25)
taylor2.name
taylor2.age
taylor2.sing()

class CountrySinger: Singer {
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}

var taylor3 = CountrySinger(name: "Taylor", age: 25)
taylor3.sing()

class HeavyMetalSinger: Singer {
    var noiseLevel: Int
    
    init(noiseLevel: Int, name: String, age: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
            print("Grrrrr rargh rargh rarrrrgh!")
    }
}


//: [Next](@next)
