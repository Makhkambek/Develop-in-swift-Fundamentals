/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let typesOfCollection:[Any] = [4, true, "forTheSakeOfLogic", 3, 4.22, false, 99, 59.88, "something"]
print(typesOfCollection)

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for item in typesOfCollection {
    if let Bool = item as? Bool {
        print("the boolean value is \(item)")
    } else if let Double = item as? Double {
        print("the Double value is \(item)")
    } else if let Int = item as? Int {
        print("the Int value is \(item)")
    } else if let String = item as? String {
        print("the String value is \(item)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let dictionary:[String:Any] = ["Bool": false, "Double": 10.9, "Int": 10, "String": "50"]
print(dictionary)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0

for(_, value) in dictionary {
    if let Value = value as? Bool {
        if Value {
            total += 2
        } else {
            total -= 3
        }
    } else if let Value2 = value as? Double {
        total += Value2
    } else if let Value3 = value as? Int {
        total += Double(Value3)
    } else if let Value4 = value as? String {
        total += 1
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0

for(_, value) in dictionary {
    if value is Bool {
        continue
    } else if let Value2 = value as? Double {
        total2 += Value2
    } else if let Value3 = value as? Int {
        total2 += Double(Value3)
    } else if let Value4 = value as? String, let numerValue = Double(Value4) {
        total2 += numerValue
    }
}
print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
