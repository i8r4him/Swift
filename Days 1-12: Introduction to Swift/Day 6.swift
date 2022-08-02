// Created on iPad Pro 12.9.

import Swift
// 100 Days of Swift by https://www.hackingwithswift.com/sixty/6/2/accepting-parameters-in-a-closure
// Day 6

// 1. Creating basic closures

let driving = {
    print("I'm driving in my car")
}
driving()

// 2. Accepting parameters in a closure 

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving2("London")

// 3. Returning values from a closure

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("Kuwait")
print(message)

// 4. Closures as parameters,  5.

func travel(action: () -> Void) {
    print("I'm getting reasy to go.")
    action ()
    print("I arrived!")
}
travel(action: driving)
travel() {
    print("I'm friving in my car")
}
travel {
    print("I'm driving in my car")
}
