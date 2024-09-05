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
subjects = []
grades = [:]