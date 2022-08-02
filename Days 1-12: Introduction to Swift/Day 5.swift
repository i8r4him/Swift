// Created on iPad Pro 12.9.

import Swift

// 100 Days of Swift by https://www.hackingwithswift.com/sixty/6/2/accepting-parameters-in-a-closure
// Day 5

// 1. Writing functions

func printHelp() {

    let message = """
    Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)

}

printHelp()

// 2. Accepting parameters
    func square(number: Int) {
        print(number * number)
    }
    square(number: 5)

// 3. Returning values

    func sqaur2(number: Int) -> Int {
        return number * number
    }

    let result = sqaur2(number: 8)
    print(result)

// 4. Parameter labels
    func sayHello(to name: String) { //name is varibale
        print("Hello, \(name)!")
    }
    sayHello(to: "Ibrahim")

// 5. Omitting parameter labels
func greet(_ person: String) {
    print("Hello \(person)!")
}
greet("Ahmad")

// 5. Default parameters
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("oh no, it's \(person) again...")
    }
}
greet2("ahmad")
greet2("Ibrahim", nicely: true)

//6. Variadic functions

func square3(numbers: Int...) {
    // You can make any parameter variadic by writing ... after its type
    for number in numbers {
        print("\(number) square is \(number * number)")
    }
}
square3(numbers: 1,2,3,4,5,6,7,8,9,10)

// 7. Writing throwing functions 
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

// 8. Running throwing funcitons 
do {
    try checkPassword("password")
    print("That password is good!")

} catch {
    print("YOu cannot use that password.")

}

// 8. inout parameters
    func doublePlace(number: inout Int) {
        number *= 2
    }
    var myNum = 10
    doublePlace(number: &myNum)

// 9. Functions summary

"""
You’ve made it to the end of the fifth part of this series, so let’s summarize:

Functions let us re-use code without repeating ourselves.
Functions can accept parameters – just tell Swift the type of each parameter.
Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
You can use different names for parameters externally and internally, or omit the external name entirely.
Parameters can have default values, which helps you write less code when specific values are common.
Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
Functions can throw errors, but you must call them using try and handle errors using catch.
You can use inout to change variables inside a function, but it’s usually better to return a new value.
"""