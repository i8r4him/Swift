// 100 Days of Swift by https://www.hackingwithswift.com/sixty/6/2/accepting-parameters-in-a-closure
// Day 1


// 1. Variables
var str = "Hello, playground"
str = "Goodbye"

// 2. Strings and integers    
var age = 23
var population = 200_000_000

// 3. Multi-line strings
var str1 = """
    This goes
    over multiple
    line
    """

var str2 = """
    This goes \
    over multiple \
    line
    """ // The final three quotes must be on a line by themselves.

// 4. Doubles and bolleans
var pi = 3.141
var statment1 = true // true or false

var myInt = 1
var myDouble = 1.0
// we cannot add myInt to myDouble
let my = Double(myInt) + myDouble
print(my)

//5. Strings interpolation 
var score = 85
var str34 = "Your score was \(score)"
var results = "The test results are here: \(str34)"
print(results)

//6. Constants
let taylor = "swift"
// If you try to change that, Xcode will refuse to run your code.

// 7. Type annotation
let name3: String = "Ibrhaim"
let year: Int = 2000
let height: Double = 1.70
let taylorRocks: Bool = true

// End of Day 1