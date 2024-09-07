// First code
print("Hello, World!")

// var and let
var theVariable = 1
let theConstant = 2

// var changes
theVariable = 3
print(theVariable)

let theConstant2: Double = 3.14

// Experiment 1
// Create a constant with an explicit type of Float and a value of 4.
let theConstant3: Float = 4.2
print(theConstant3)

// Converting to another type
let label = "The width is "
let width = 23
let widthLabel = label + String(width)
print(widthLabel)

// Experiment 2
// Try removing the conversion to String from the last line. What error do you get?
// binary oprator + cannot be applied to operads of type String an Int

let apples = 3
let oragnes = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oragnes) pieces of fruit."
print(fruitSummary)

// Array and Dictionary
var subjects = ["physics", "calculus", "poetry", "history"]
print(subjects[2]) // Prints "poetry"

var grades = [
    1: "sehr gut"
,   2: "gut"
,   3: "befriedigend"
,   4: "ausreichend"
,   5: "nicht ausreichend"
]

subjects.append("Mathe")
print(subjects)

// Empty Arrays and Dictionaries
subjects = [] //or
let emptyarray: [String] = []
let emptyDictionary: [Float: String] = [:]
grades = [:]

/*
    1.  Data Structure:
    •   Array: Ordered list.
    •   Dictionary: Unordered key-value pairs.

    2.  Accessing Elements:
    •   Array: Accessed by index (position).
    •   Dictionary: Accessed by key (name or identifier).

    3.  Uniqueness:
    •   Array: Elements can repeat, and multiple elements can have the same value.
    •   Dictionary: Keys must be unique, but values can repeat.
*/

// Control Flow
let Score = [34, 23, 34, 56, 67, 22]
var total = 0
for i in Score {
    if i > 50 {
        total += 3
    } else {
        total += 1
    }
}
print(total)

let ScoreDecoration = if total == 10 {
    "Sehr gut"
} else {
    "Gut"
}
print("Score: ", ScoreDecoration)

// Important
/* You can use if and let together to work with values that might be missing.
These values are represented as optionals. An optional value either contains
a value or contains nil to indicate that a value is missing.
Write a question mark (?) after the type of a value to mark
the value as optional.
*/

var optrionalString: String? = "Hello"
print(optrionalString == nil) // Prints "false"

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, stranger"
}

print(greeting)

// Experiment 3
// Change optionalNumber to nil. What number do you get?
// Add an else clause that sets a different number if optionalName is nil.

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"

print(informalGreeting)
/*
    •   This line uses string interpolation and the nil-coalescing operator (??).
    •   The expression nickname ?? fullName means:
    •   If nickname has a value (i.e., is not nil), use its value.
    •   If nickname is nil, use the value of fullName instead.
*/

let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("I hope you like \(x).")
    default:
        print("Everything tastes good in soup.")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestCategory = ""
for (caterogry, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestCategory = caterogry
        }
    }
}
print(largest) // Prints "25"

// Experiment 4
// Replace the _ with a variable name, and keep track of which kind of number was the largest.

var n = 2
while n < 100 {
    n *= 2
}
print(n)

// at least once
var m = 2
repeat {
    m *= 2
} while m < 0
print(m) // Prints "128"

// Experiment 5
// Change the condition from m < 100 to m < 0 to see how while and r-
// epeat-while behave differently when the loop condition is already false.


var total2 = 0
for i in 0..<4 {
    total2 += i
}
print(total2) // Prints "6"

// Fucntions and closures
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")
