/*
 Case Representation
 -------------------
    - Enums are named Data Models and allow us to specify cases
    - Syntax: ``` enum EnumName { # Long Declaration
                    case caseOne
                    case caseTwo
                    case caseThree
                }

                enum EnumName { # Short Declaration
                    case caseOne, caseTwo, caseThree
                }
    ```

    - Accessed through `dot notation`
    - Enumerations can be assigned specific values, called raw values. These values must be of the same type for
    all cases of an enumeration.

 */

class Entertainment {
    //properties
    static let generalOptions = Entertainment.generateGeneralOptions()
    var name: String
    var cost: Double
    var location: String

    static func generateGeneralOptions() -> [Entertainment] {
        var options = [Entertainment]()

        // activities
        let activity = Activity(name: "Horseback riding", cost: 60)
        activity.difficulty = .intermediate
        activity.weatherConditions = "No heavy rain"
        options.append(activity)

        // arts
        let arts = Arts(name: "MoMA. Items: Is Fashion Modern?", cost: 12)
        arts.genre = .modern
        arts.teaser = "Items: Is Fashion Modern? explores the present, past—and sometimes the future—of 111 items of clothing and accessories that have had a strong impact on the world in the 20th and 21st centuries—and continue to hold currency today. "
        options.append(arts)

        // gastronomy
        let gastronomy = Gastronomy(name: "Horseback riding", cost: 60)
        gastronomy.cuisine = "Italian"
        gastronomy.dressCode = .casual
        options.append(gastronomy)

        return options
    }

    //initializer
    init(name: String, cost: Double) {
        self.name = name
        self.cost = cost
        location = ""
    }
}

// enums
enum Difficulty: String {
    case hard = "Hard"
    case intermediate = "Intermediate"
    case easy = "Easy"
}

enum Genre: String {
    case classical = "Classical"
    case modern = "Modern"
    case historical = "Historical"
}

enum DressCode: String {
    case streetwear = "Streewear"
    case casual = "Casual"
    case formal = "Formal"
}

// classes
class Activity: Entertainment {
    var weatherConditions = ""
    var difficulty: Difficulty = .intermediate
}

class Arts: Entertainment {
    var genre: Genre = .modern
    var teaser = ""
}

class Gastronomy: Entertainment {
    var dressCode: DressCode = .casual
    var cuisine = ""
}

