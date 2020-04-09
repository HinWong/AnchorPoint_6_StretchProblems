//: [Previous](@previous)
/*:
 # Tuesday Stretch Problem 6.2
 ## Add Ints
 
 ### Instructions:
 Create a func called add where the method allows one to pass as many or as few Ints as desired and then adds them together and returns the result.
 
 Example: If I call add(3, 7), it prints out 10. Example: If I call add(3, 7, 2, 4), it prints out 16. Example: If I call add(3, 7, 2, 9, 12, 11), it prints out 44.
 */

import Foundation

// variadic parameter
// Approach 1
func addNumbers (numbers: Int ...) {
    
    var initial = 0
    for i in numbers {
        initial += i
    }
    print("The sum is \(initial)")
}

addNumbers(numbers: 1,2,3,4,5,6,7,8,9,10)

// Approach 2
func sum(integers: Int ...) {
    print(integers.reduce(0, +))
}
sum(integers: 1,2,3,4,5,6,7,8,9,10)

//: [Next](@next)
