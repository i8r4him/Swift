// 100 Days of Swift by https://www.hackingwithswift.com/sixty/6/2/accepting-parameters-in-a-closure
// Day 3

// 1. Arithmetic operators
    let firstScore = 34
    let secondScore = 32

    let total = firstScore + secondScore
    let difference = firstScore - secondScore
    let product = firstScore * secondScore
    let divide = firstScore / secondScore
    let remainder = 13 % firstScore

// 2. operator overloading
    let meaningOfLife = 42
    let doublemeaning = 42 + 42

    let first = "Hello, "
    let second = "World"
    let all = first + second
    print(all)

    let firstHalf = ["John", "Paul"]
    let secondHalf = ["George", "Ringo"]
    let beatles = firstHalf + secondHalf
    print(beatles)

// 3. Coumpound assignment operator
    var score = 23
    score -= 10
    print(score)

    var quote = "Hello, World: ich bin "
    quote += "Ibrahim"
    print(quote)

    let first1 = 6
    let second2 = 4
    first1 == second2 // the same 
    first1 != second2 // check if they are not the same

    first1 <= second2
    "Ibraim" < "Ahmad"

// 4. Condtions
    let eins = 12
    let zwei = 13
    if eins + zwei == 25 {
        print("yes, I did")
    }
    if eins + zwei == 24 {
        print("yes I did")
    } else {
        print("Hello. she said no.")
    }
    if eins + zwei == 23 {
        print("yes")
    } else if eins + zwei == 24 {
        print("no")
    } else {
        print("nooo")
    }

    let age1 = 12
    let age2 = 21

    if age1 > 18 && age2 > 18 {
        print("Both are over 18")
    }
    if age1 > 18 || age2 > 18 {
        print("At least one is over 18")
    }
    // && (pronounced “and”) and || (pronounced “or”).

// 5. The ternary operator
    let firstCard = 11
    let secondCard = 10
    print(firstCard <= secondCard ? "Cards are the same" : "Cards are different")

// 6. Switch statements
    let weather = "sunny"
    switch weather {
    case "rain":
        print("Bring an umbrella")
    case "snow":
        print("Wrap up warm")
    case "sunny":
        print("Wear sunscreen")
    // Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword like this
    default:
        print("Enjoy your day!")
    }

// 7. Range operators
    let score2 = 85
    switch score2 {
    case 0..<50:
        print("You failed badly.") 
    case 50..<85:
        print("you did it")
    default:
        print("you did great") 
    }

// End of Day 3
