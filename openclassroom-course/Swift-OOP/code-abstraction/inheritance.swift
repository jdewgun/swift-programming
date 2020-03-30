/*
 Inheritance
 ------------
 - Concept of Child and Parent Classes.
 - Creation of a class which inherits another class is called `subclassing` or `subtyping`
 - Organization of code using an inheritence tree
 - Utilization: ```class ChildClass: ParentClass {}```
 */
class Entertainment {
    //properties
    static let generalOptions = Entertainment.generateGeneralOptions()
    var name: String
    var cost: Double
    var location: String

    static func generateGeneralOptions() -> [Entertainment] {
        return [Entertainment]()
    }

    //initializer
    init(name: String, cost: Double) {
        self.name = name
        self.cost = cost
        location = ""
    }
}

class Activity: Entertainment {
    var weatherConditions = ""
    var difficulty = ""
}

class Arts: Entertainment {
    var genre = ""
    var teaser = ""
}

class Gastronomy: Entertainment {
    var dressCode = ""
    var cuisine = ""
}
