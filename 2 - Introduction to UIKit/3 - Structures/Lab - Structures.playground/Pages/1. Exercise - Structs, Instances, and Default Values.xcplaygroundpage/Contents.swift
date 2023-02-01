/*:
## Exercise - Structs, Instances, and Default Values
 
 Imagine you are creating an app that will monitor location. Create a `GPS` struct with two variable properties, `latitude` and `longitude`, both with default values of 0.0.
 */
struct GPS {
    var latitude: Float = 0.0
    var longitude: Float = 0.0
}
let gps = GPS(latitude: 2.5, longitude: 3.5)
print(gps.latitude)

//:  Create a variable instance of `GPS` called `somePlace`. It should be initialized without supplying any arguments. Print out the latitude and longitude of `somePlace`, which should be 0.0 for both.
struct somePlace {
    var latitude = Double.init()
    var longitude = Double.init()
}
var place = somePlace(latitude: 0.0, longitude: 0.0)
print(place.latitude)
print(place.longitude)

//:  Change `somePlace`'s latitude to 51.514004, and the longitude to 0.125226, then print the updated values.
place = somePlace(latitude: 51.514004, longitude: 0.125226)
print(place.latitude)
print(place.longitude)

//:  Now imagine you are making a social app for sharing your favorite books. Create a `Book` struct with four variable properties: `title`, `author`, `pages`, and `price`. The default values for both `title` and `author` should be an empty string. `pages` should default to 0, and `price` should default to 0.0.
struct Book {
    var title =  String.init()
    var author = String.init()
    var pages = Int.init()
    var price = Double.init()
}


//:  Create a variable instance of `Book` called `favoriteBook` without supplying any arguments. Print out the title of `favoriteBook`. Does it currently reflect the title of your favorite book? Probably not. Change all four properties of `favoriteBook` to reflect your favorite book. Then, using the properties of `favoriteBook`, print out facts about the book.
struct FavoriteBook {
    let title: String
    let author: String
    let pages: Int
    let price: Double
}
let book = FavoriteBook(title: "Be or not to be", author: "Teshabayev Makhkambek", pages: 777, price: 99.99)
print(book.title)
print(book.author)
/*:
page 1 of 10  |  [Next: App Exercise - Workout Tracking](@next)
 */
