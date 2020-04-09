/*:
 # Monday Stretch Problem 6.1
 ## Game of Threes
 
 ### Instructions:
 1. Make a method that takes an Int and returns an array of steps to get to 1.
 2. The game goes as follows: Start with the given Int and, if it is divisible by 3, divide it by 3, otherwise ADD OR SUBTRACT 1 (whichever makes the number divisible by 3, then divide it.
 3. Repeat step 2, until you reach 1.
 
 Example: Input: 100 Output: [100, 33, 11, 4, 1]
 
 ### Black Diamond 💎💎💎
 1. Instead of returning an array, return a dictionary where the keys are the values from the array, and the keys are 0, -1, or 1 depending on how the number was manipulated to make it divisible by 3
 2. Sadly, the key value pairs won't be ordered :( Example: Input: 100 Output: [100 : -1 , 33 : 0, 11 : 1, 4 : -1 , 1 : 0]
*/

import UIKit

//func gameOfThrees(input: Int) {
//
//    if input.isMultiple(of: 3) {
//        var number = input
//        input / 3
//
//    } else {
//       var sum =  input + 1
//        if sum % 3 != 0 {
//            return
//        } else {
//            input - 1
//            if input.isMultiple(of: 3) {
//                input / 3
//            }
//        }
//    }
//}
//
//gameOfThrees(input: 30)

func playGameOfThreesWith(number: Int) -> [Int] {
    var modifiedNumber: Int = number
    var numberArray: [Int] = [number]
    
    while modifiedNumber > 1 {
        if modifiedNumber % 3 == 0 {
            numberArray.append(modifiedNumber / 3)
            modifiedNumber /= 3
        } else if modifiedNumber % 3 == 1 {
            modifiedNumber = modifiedNumber - 1
            numberArray.append(modifiedNumber / 3)
            modifiedNumber /= 3
        } else {
            modifiedNumber = modifiedNumber + 1
            numberArray.append(modifiedNumber / 3)
            modifiedNumber /= 3
        }
    }
    return numberArray
}

playGameOfThreesWith(number: 45)

//: [Next](@next)
