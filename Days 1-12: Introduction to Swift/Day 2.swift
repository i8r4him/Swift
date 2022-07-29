// 100 Days of Swift by https://www.hackingwithswift.com/sixty/6/2/accepting-parameters-in-a-closure
// Day 2

// 1. Arrays
    let Ahmad = "Ahmad Sheadah"
    let Ibrahim = "Ibrahim Abdullah"
    let Abdullah = [Ahmad, Ibrahim]
    Abdullah[0]

// 2. Sets
    // Items aren’t stored in any order; they are stored in what is effectively a random order.
    // No item can appear twice in a set; all items must be unique.
    let colors = Set(["Red", "Blue", "Green"]) // random order

// 3. Tuples

    // 1. You can’t add or remove items from a tuple; they are fixed in size.
    // 2. You can’t change the type of items in a tuple; they always have the same types they were created with.
    // 3. You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.
var name = (first: "Ibrahim", last: "Abdullah")
name.0
name.last // You can change the values not the type

// 4.Arrays vs sets vs tuples

// If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
let Address = (house: 999, street: "Taylor Swift", city: "Nashville")

// If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
let set = Set(["asdf", "helli", "ehkl"])

// If you need a collection of values that can contain duplicates, or the order your items matters, you should use an array:
let python = ["Ahmad", "Ahamd", "mike", "hohm"] // Tip: Arrays are by far the most common of the three types.

// 5. Dictionaries
let hight = [
    "Ahmad" : 1.78,
    "Ed Shereran": 1.87
]
hight["Ahmad"]

    """
    Note: When using type annotations, 
    dictionaries are written in brackets with a 
    colon between your identifier and value types. 
    For example, [String: Double] and[String: String].
    """

// 6. Dictionary default values

    """
        If you try to read a value from a dictionary using a key that doesn’t exist,
        Swift will send you back nil – nothing at all. While this might be what you want, 
        there’s an alternative: we can provide the dictionary with a default value
        to use if we request a missing key.
    """
let favoritephone = [
    "ahmad": "andorid",
    "saphie": "oneplus"
]
favoritephone["ahmad"]
favoritephone["sara", default: "Unknown"]
favoritephone["sara"]  // nil
   
// 7. Creating empty collections
    // Arrays, sets, and dictionaries are called collections.

// Arrays
var teams = [String: String]()
teams["Ahmad"] = "value"

    // Integers
    var results = [Int]() // empty array

// Sets
var words = Set<String>()
var numbers = Set<Int>()

// Dictionary
var scores = Dictionary<String, Int>()

// 8. Enumerations

"""
    For example, 
    if you wanted to write some code to represent 
    the success or failure of some work you were doing, 
    you could represent that as strings:
"""
let result = "falilure"
let result2 = "failed"
let rsult3 = "fail"

enum Result {
    case success
    case failure
}
let result4 = Result.failure
// This stops you from accidentally using different strings each time.

//  9. Enum associated values
"""
    As well as storing a simple value, 
    enums can also store associated values attached to each case. 
    This lets you attach additional information to your enums so 
    they can represent more nuanced data.
"""
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "WWDC 2022")

// 10. Enum raw values
// Sometimes you need to be able to assign values to enums so they have meaning.
enum Planet: Int{
    case mercury // = 1. Now Swift will assign 1 to mercury and count upwards from there, meaning that earth is now the third planet.
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 2)

// 11. Complex types: Summary
// Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
// Arrays store items in the order you add them, and you access them using numerical positions.
// Sets store items without any order, so you can’t access them using numerical positions.
// Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
// Dictionaries store items according to a key, and you can read items using those keys.
// Enums are a way of grouping related values so you can use them without spelling mistakes.
// You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.

// End of Day 2
