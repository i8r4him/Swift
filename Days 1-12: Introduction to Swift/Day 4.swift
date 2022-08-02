 // Day 4

// 1. For loops
// The most common loop in Swift is a for loop: it will loop over arrays and ranges, and each time the loop goes around it will pull out one item and assign to a constant.
let count = 1...10
for number in count {
    print("Number is \(number)")
}
let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}

print("Playeras gonna ")
for _ in 1...5 {
    print("Play")
}

// 2. While loops
// A second way of writing loops is using while: give it a condition to check, and its loop code will go around and around until the condition fails.
var number = 1
while number <= 20 {
    print(number)
    number += 1
}
print("Ready or not, here I come!")

// 3. Repeat loops
// he third way of writing loops is not commonly used, but it’s so simple to learn we might as well cover it: it’s called the repeat loop, and it’s identical to a while loop except the condition to check comes at the end.

var number1 = 1
repeat {
    print(number)
    number += 1
} while number <= 20
print("Ready or not, here I come!")

// For example, this print() function will never be run, because false is always false:
while false {
    print("This is false")
}

// On the other hand, this print() function will be run once, because repeat only fails the condition after the loop runs:
repeat {
    print("This is false")
} while false

// 4. Exiting loops
// You can exit a loop at any time using the break keyword. To try this out, let’s start with a regular while loop that counts down for a rocket launch:

var countDown = 10
while countDown >= 0 {
    print(countDown)
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}

// 5. Exiting multiple loops
// If you put a loop inside a loop it’s called a nested loop, and it’s not uncommon to want to break out of both the inner loop and the outer loop at the same time.

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}


// 6. Skipping items
// As you’ve seen, the break keyword exits a loop. But if you just want to skip the current item and continue on to the next one, you should use continue instead.

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

// 7. Infinite loops
// It’s common to use while loops to make infinite loops: loops that either have no end or only end when you’re ready. All apps on your iPhone use infinite loops, because they start running, then continually watch for events until you choose to quit them.

// To make an infinite loop, just use true as your condition. true is always true, so the loop will repeat forever. Warning: Please make sure you have a check that exits your loop, otherwise it will never end.

// As an example, we’re going to use while true to print the music of John Cage’s piece 4’33” – if you didn’t know, it’s famous because it’s 4 minutes and 33 seconds of complete silence.

// We can write the “music” for this piece using while true, with a condition that exits the loop when we’ve gone around enough times://

var counter = 0
while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}

// 8. Looping summary
// 1. Loops let us repeat code until a condition is false.
// The most common loop is for, which assigns each item inside the loop to a temporary constant.
// If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
// There are while loops, which you provide with an explicit condition to check.
// Although they are similar to while loops, repeat loops always run the body of their loop at least once.
// You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
// You can skip items in a loop using continue.
// Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!

// End of Day 4