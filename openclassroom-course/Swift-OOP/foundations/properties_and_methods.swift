/*
 Working with Classes (Part Three)
 -------------------------------
 - Class Properties and Methods are declared with `static`
 - Static Properties are called/accessed using `dot notation`
 - Class Properties are constants for a class
 - Class Methods are used to define specific initializations and/or managing multiple instances
 */

class Entertainment {
    static let generalOptions = Entertainment.generateGeneralOptions()

    static func generateGeneralOptions() -> [Entertainment] {
        return [Entertainment]()
    }
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
