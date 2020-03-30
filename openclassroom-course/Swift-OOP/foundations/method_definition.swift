/*
 Working with Classes (Part Two)
 -------------------------------
 - Methods are Class Functions
 - Methods are called using `dot notation`
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

    // Class Methods
    func pickEntertainment(availableBudget: Double) -> Entertainment? {
        return nil
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

    // Class Methods
    func pickDestination() -> Entertainment? {
        return nil
    }

    func tellStory() -> String {
        return ""
    }
}
