//: [Previous](@previous)

import Foundation

//: DAY FOUR - Loops

// -> FOR
let count = 1...10

for number in count {
    print("number is: \(number)")
}

let albums = ["Camila", "Romance", "Familia"]

for album in albums {
    print("\(album) is on Apple Music")
}

for _ in 1...5 {
    print("Hello!")
}

// -> WHILE

var number = 1

while number <= 10 {
    print(number)
    number += 1
}

// -> REPEAT LOOP

repeat {
    print("this is false")
} while false


// -> EXITING LOOPS
 
for n in 1...5 {
    if n == 4 {
        break
    }
    print(n)
}

// -> EXITING MULTIPLE LOOPS

let range = 1...3

outerLoop: for i in range {
    innerLoop: for j in range {
        let product = i * j
        
        if product == 6 {
            print("six")
            break outerLoop
        }
        print("\(i) \(j) = \(product)")
    }
}

// -> SKIPPING ITEMS
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

for i in 1...15 {
    let square = i * i
    if i == 8 {
        continue
    }
    print("\(i) squared is \(square)")
}

// -> INFINITE LOOP
//To make an infinite loop, just use true as your condition. true is always true, so the loop will repeat forever. Warning: Please make sure you have a check that exits your loop, otherwise it will never end.

var counter = 0

while true {
    print(".", terminator: "")
    counter += 1

    if counter == 100 {
        break
    }
}
//: [Next](@next)
