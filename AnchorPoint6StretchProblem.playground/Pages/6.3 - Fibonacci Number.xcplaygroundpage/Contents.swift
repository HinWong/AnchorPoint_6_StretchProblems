//: [Previous](@previous)
/*:
 # Wednesday Stretch Problem 6.3
 ## Fibbonacci Number
 
 ### Instructions:
 1. Create a function that finds the closest fibonacci number that is less than or equal to the number that is passed into a function.
 2. Don't hesitate to Google what a Fibonacci number is.
 3. Test it by passing in the number 2000. We will compare results.
 
 ### Black Diamond 💎💎💎
 Create the above using a single line of code in the function body. (Hint: recursion)
 */
import Foundation

func fibonacci (arg: Int) {
    
    var term1 = 0
    var term2 = 1
    
    for term in 0 ..< arg {
        let term = term1 + term2
        term1 = term2
        term2 = term
    }
    print("Result: \(term2)")
   
}

fibonacci(arg: 25)

func fibNum(num: Int) -> Int {
    var previousNum = 0
    var fibNum = 1
    
    while fibNum <= num {
        //we need to hold out current fibNum as we will be changing it later be still need this value
        let holder = fibNum
        fibNum += previousNum
        previousNum = holder
    }
    return previousNum
}
fibNum(num: 25)

//: [Next](@next)
