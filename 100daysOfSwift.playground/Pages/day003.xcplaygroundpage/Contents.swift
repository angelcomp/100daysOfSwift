//: [Previous](@previous)

import Foundation

//: DAY THREE - Operators and conditions


// -> ARITHMETIC OPERATORS

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = firstScore % secondScore


// -> OPERATOR OVERLOADING

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// -> COMPOUND ASSIGNMENT OPERATORS

var value = 12
value -= 2
value += 4
value /= 7
value *= 10
value %= 3


// -> COMPARISON OPERATORS
firstScore == secondScore
firstScore != secondScore
firstScore > secondScore
firstScore < secondScore
firstScore >= secondScore
secondScore <= secondScore

"Angelica" > "Andie" // And comes before Ang

// -> CONDITIONS

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces A lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// -> COMBINING CONDITIONS

let age1 = 10
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

// -> THE TERNARY OPERATOR

firstCard == secondCard ? "same" : "different"


// -> SWITCH STATEMENTS

switch age1 {
case 10:
    print("ten")
    fallthrough //execute next switch case
case 11:
    print("eleven")
case 12:
    print("twelve")
default:
    print("")
}

// -> RANGE OPERATORS

let value2 = 10

// ..<n exclude n
// ...n include n

switch value2 {
case 0..<10: print("no")
case 0...10: print("yes")
default: print("idk")
}

print(type(of: 0...10))
print(type(of: 0..<10))


//: [Next](@next)
