//: [Previous](@previous)

import Foundation

//--------------------- VARIABLES AND CONSTANTS -------------------------------//

//this is a variable (var):
var name = "Angelica"

//this is a constant (let):
let nickname = "Angel"

//you can change variables:
name = "Angelica dos Santos"

//but you cannot change constants:
//nickname = "Andie"
/// errors:
/// cannot assign to value: 'nickname' is a 'let' constant
/// note: change 'let' to 'var' to make it mutable

//you also cannot create another variable or constant with an existent name:
// var name = "Someone"

///errors:
///note: 'name' previously declared here var name = "Angelica"
///error: invalid redeclaration of 'name' var name = "Someone"

//--------------------- TYPES OF DATA -------------------------------//

var city: String
city = "London"

var year: Int
year = 2022

//you can't change a variable to another type when they were already set to one type

//city = 2022
//year = "London"

///errors:
///error: cannot assign value of type 'Int' to type 'String'
///error: cannot assign value of type 'String' to type 'Int'

// both can create variables with floating point, but prefer to use Double wich is more precise!
var dollar: Float
dollar = 5.21

var pi: Double
pi = 3.14159265359

//booleans
var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false

//--------------------- OPERATORS -------------------------------//
var a = 10
a = a + 10 //add
a = a - 10 //minus
a = a * 6 //multiply
a = a / 3 //divide
a = a % 6 //modulus (return the remainder of division)

var b = 10
b += 10 //add
b -= 10 //minus
b *= 2 //multiply
b /= 5 //divide
b %= 3 //modulus (return the remainder of division)

//they are all the same, but the second method is simpler!

// the + operator can also be used with strings
var name1 = "Angelica"
var name2 = "dos Santos"
var both = name1 + " " + name2

//--------------------- COMPARISON OPERATORS -------------------------------//
var c = 1.1
var d = 3.3

// > more than
// < less than
// >= more than or equal to
// <= less than or equal to
// == equals

c > 3 //false
c >= 3 //false
c < 4 //true
c <= 4 //true
d == 3.3 //true

name1 == "Angelica" //true
name1 == "ANGELICA" //false

var isTrue = 1 == 1
var changeTrueToNot = !isTrue // ! makes your statement mean the opposite of what it did

2 != 1 //true: 2 NOT EQUAL 1

//----------------- STRING INTERPOLATION ----------------------//

//to join strings we can do:
var visitor = "Tuanne"
var welcome = "Welcome, " + visitor

//but it's not efficient, particularly if you're combining multiple variables together

var color1 = "red"
var color2 = "blue"
var color3 = "yellow"
var number = 7

var rainbow = "The rainbow has \(number) colors, 3 of them are \(color1), \(color2) and \(color3)"

//----------------- ARRAYS ----------------------//

var evenNumbers = [2, 4, 6, 8]
var songs = ["Halo", "Snuff", "Castle"]

songs[0]
songs[1]
songs[2]

type(of: songs) //Array<String>.Type

//you only can mix types inside a Array if specify the type Any

var songs2: [Any] = ["Halo", "Snuff", "Castle"]
songs2 += evenNumbers // ["Halo", "Snuff", "Castle", 2, 4, 6, 8]

//if you need to create an empty Array, here it is two ways:
var emptyArray: [String] = []
var emptyArray2 = [Int]()

//----------------- DICTIONARIES ----------------------//

var person = [
    "first": "Taylor",
    "middle": "Alison",
    "last": "Swift",
    "month": "December",
    "website": "taylorswift.com"
]

person["middle"]
person["month"]

type(of: person) //Dictionary<String, String>.Type

//----------------- CONDITIONAL STATEMENTS ----------------------//

var action: String
var person2 = "hater"

if person2 == "hater" {
    action = "hate"
} else if person2 == "player" {
    action = "play"
} else {
    action = "cruise"
}

var action2: String
var stayOutTooLate2 = true
var nothingInBrain2 = true

if stayOutTooLate2 && nothingInBrain2 { // true
    action2 = "cruise"
}

if !stayOutTooLate2 && !nothingInBrain2 { // false
    action2 = "cruise"
}

//----------------- LOOPS ----------------------//

for i in 1...10 {
    print("\(i) x 3 = \(i * 3)")
}

//If you don't need to know what number you're on, you can use an underscore instead
for _ in 1...5 {
    print("Angelica")
}

1...10 //means Closed Range
1..<10 //means Half-Open Range
..<2 //means One-sided Range

// one-sided range using
// ..< operator
let range1 = ..<2

// check if -9 is in the range
print(range1.contains(-1))

// one-sided range using
// ... operator
let range2 = 2...

// check if 33 is in the range
print(range2.contains(33))


//----------------- LOOPING OVER ARRAYS ----------------------//

for song in songs {
    print("My favorite song is \(song)")
}

var people3 = ["players", "haters", "heart-breakers", "fakers"]
var actions3 = ["play", "hate", "break", "fake"]

for i in 0...3 {
    print("\(people3[i]) gonna \(actions3[i])")
}

for i in 0..<people3.count {
    print("\(people3[i]) gonna \(actions3[i])")
}

//----------------- INNER LOOPS ----------------------//

for i in 0..<people3.count {
    var str = "\(people3[i]) gonna"

    for _ in 1...5 {
        str += " \(actions3[i])"
    }

    print(str)
}

//----------------- WHILE LOOPS ----------------------//

var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1

    if counter == 556 {
        break //stops loop
    }
}

for song in songs {
    if song == "Halo" {
        continue // jump to next iteration
    }

    print("My favorite song is \(song)")
}

//----------------- SWITCH CASE ----------------------//

let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")

case 1:
    print("You just released iTunes Live From SoHo")

case 2:
    print("You just released Speak Now World Tour")

default:
    print("Have you done something new?")
}

let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You're just starting out")

case 2...3:
    print("You're a rising star")

case 4...5:
    print("You're world famous!")
    fallthrough //jump to next case

default:
    print("Have you done something new?")
}

//: [Next](@next)
