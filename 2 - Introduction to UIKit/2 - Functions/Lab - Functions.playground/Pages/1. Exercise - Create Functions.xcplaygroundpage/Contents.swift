/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself(myName: String, study: String) {
    print("Hello, my name is \(myName) and i study in \(study)")
}
introduceMyself(myName: "Makhkambek", study: "school number 20")
//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation
func magicEightBall(number: Int) {
    switch number {
    case 0...1:
        print("Hello World")
    case 1...2:
        print("Ohh, thats great")
    case 2...3:
        print("hmmm, i think its too much")
    case 3...4:
        print("amazing!")
    default:
        print("Something going wrong")
    }
}
magicEightBall(number: 2)

/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
