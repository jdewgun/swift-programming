/*
 Working with Classes
 --------------------
 - Properties can be used without a default value in two manners
    - Optional Declaration
    - Value Assignment in Init
 - Init funcs are called as the given instance is created.
 - `self` refers to the instance of a class within which it is called
 */

class Entertainment {
    // Class Properties
    var name = String()
    var cost = Double()

    // Class Initializer
    init(name:String, cost:Double) {
        self.name = name
        self.cost = cost
    }
}

class Destination {
    // Class Properties
    var name = String()
    var cost = Float()
    var entertainmentOptions: [Entertainment]
    var accomplishments: [Entertainment]

    // Class Initializer
    init(name:String, cost:Float, entertainmentOptions:[Entertainment]) {
        self.name = name
        self.cost = cost
        self.entertainmentOptions = entertainmentOptions
        accomplishments = []
    }
}

class Adventure {
    // Class Properties
    var amountSpent: Double
    var destinations: [Destination]
    var placesVisited: [Destination]

    // Class Initializer
    init(destinations: [Destination]){
        self.destinations = destinations
        amountSpent = 0.0
        placesVisited = []
    }
}
