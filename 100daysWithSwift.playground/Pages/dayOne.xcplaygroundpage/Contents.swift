import Foundation

var greeting = "Hello, playground"
print(greeting)

//: DAY ONE - First steps in Swift

// -> VARIABLES
//the value of an variable can be changed, without mark with another "var".

var myName = "Angelica"
myName = "Andie"
myName = "Angie"

// -> STRINGS AND INTEGERS
// They can't be mixed, like: var city = "New York" 398. It throw an error.

var city = "New York"
var age = 398
var population = 8_380_000

// -> MULTI-LINE STRINGS

var str1 = """
This goes
over multiple
lines
"""

// for no \n, use \ in the end.
var str2 = """
This goes \
over multiple \
lines
"""

// ->  DOUBLES AND BOOLEANS
var pi = 3.141
var yes = true
var no = false

// -> STRING INTERPOLATION
var score = 85
var result = "Your score was \(score)"
var result2 = "The test results are here: \(result)"

// -> CONSTANTS
let taylor = "Swift"
//taylor = "not swifter" //error: Cannot assign to value: 'taylor' is a 'let' constant

//-> TYPE ANNOTATIONS
let name: String = "Taylor"
let height: Double = 1.78
let taylorRocks: Bool = true
let album: String = "Reputation"
let year: Int = 1989

//: [Next](@next)
