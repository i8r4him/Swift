
// 100 Days of Swift by https://www.hackingwithswift.com/sixty/6/2/accepting-parameters-in-a-closure
// Day 4

// 1. For loops
    let count = 1...10
    for number in count {
        print("Number is \(number)")
    }
    let Albums = ["Ibrahim", "Ahmad", "Obada"]
    for album in Albums {
        print("\(album) is on Apple Music")
    }
    for _ in 1...5 {
        print("EHllo")
    }

// 2. While loop
    var num = 1
    while num <= 20 {
        print(num)
        num += 1
    }

// 3. Repeat loop
    var num2 = 1
    repeat {
        print(num2)
        num2 += 1
    } while num2 <=  20
    print("Ready or not, here I come!")

// 4. Exiting loops
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
    outerLoop: for i in 1...10 {
        for j in 1...10 {
            let produkt = i * j
            print("\(i) * \(j) is \(produkt)")
            
            if produkt == 50 {
                print("gut genug")
                break outerLoop
            }
        }
    }

// 6. Skipping items
    for i in 1...10 {
        if i % 2 == 1 {
            continue // skip it if its odd 1,3, .. 
        }
        print(i)
    }

// 7. Infinite loop
    var counter = 0
    while true {
        print("1")
        counter += 1
        if counter == 12 {
            print("HEllo")
            break
        }
    }

// 8. Looping summary
    """
    You’ve made it to the end of the fourth part of this series, so let’s summarize:

    Loops let us repeat code until a condition is false.
    The most common loop is for, which assigns each item inside the loop to a temporary constant.
    If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
    There are while loops, which you provide with an explicit condition to check.
    Although they are similar to while loops, repeat loops always run the body of their loop at least once.
    You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
    You can skip items in a loop using continue.
    Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!
    """
