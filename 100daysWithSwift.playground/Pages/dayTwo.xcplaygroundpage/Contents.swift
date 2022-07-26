//: [Previous](@previous)

import Foundation

//: DAY TWO - Complex data types

//-> ARRAYS
//if you want to store many values you will often use arrays!

let angelica = "Angel"
let tuanne = "Tutti"

let nicknames = [angelica, tuanne]
nicknames[0]
nicknames[1]

//index starts with 0


//-> SETS
// 1: items are stored in random order
// 2: no item can appear twice, each item must be unique

let colors = Set(["red", "blue", "green"])
let colors2 = Set(["red", "blue", "green", "red", "red"])

// -> TUPLES
// 1: You can’t add or remove items from a tuple; they are fixed in size.
// 2: You can’t change the type of items in a tuple; they always have the same types they were created with.
// 3: You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.

var name = (first: "Taylor", last: "Swift")
name = (first: "Angelica", last: "Santos")

name.0
name.first

// name = (first: "Angelica", age: 25) error!!!

// -> ARRAYS vs SETS vs TUPLES

// If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
let address = (house: 123, street: "Taylor Swift Avenue", city: "NY")

// If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
let pets = Set(["Zelda", "Frida", "Atilio"])

// If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:

let grades = [8.5, 9, 10, 9, 8.5]

// -> DICTIONARIES
// Dictionaries are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want.

let height = [
    "Taylor" : 1.78,
    "Lauren" : 1.65
]

height["Lauren"]

// -> DICTIONARY DEFAULT VALUE

//if we tried reading the height for Charlotte, we’d get back nil, meaning that Swift doesn’t have a value for that key:
height["Charlotte"]

//We can fix this by giving the dictionary a default value of “Unknown”, so that when no height is found for Charlotte we get back 0 rather than nil:

height["Charlotte", default: 0]

// -> CREATING EMPTY COLLECTIONS

//dictionary
var teams = [String: String]()
var scores = Dictionary<String, Int>()

teams["Angel"] = "blue"
teams

//array
var results = [Int]()
var results2 = Array<Int>()

//set
var words = Set<String>()


// -> ENUMARATIONS
enum Result {
    case success
    case failure
}

Result.success
Result.failure

// -> ENUM ASSOCIATED VALUES

enum Activity {
    case bored
    case talking(topic: String)
    case running(destination: String)
    case singing(volume: Int)
}

Activity.running(destination: "downtown")
print(Activity.singing(volume: 5))

// -> ENUM RAW VALUES
enum  Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

enum  Planet2: Int {
    case mercury = 10
    case venus
    case earth
    case mars
}

Planet(rawValue: 2)
Planet2(rawValue: 12)
Planet2.mars.rawValue
//: [Next](@next)
