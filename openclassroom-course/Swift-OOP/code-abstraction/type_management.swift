/*
 Manage Types
 ------------
 - Two common use cases of type checking and type casting are Inheritance and Any/AnyObject Types
 - The Any/AnyObject type allows variables to accept values of all types
 - Type Checking is done using `is` keyword
 - Type Casting is done using `as?` or `as!` keywords
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
        activity.equipmentRequired = "A helmet"
        activity.weatherConditions = "No heavy rain"
        options.append(activity)

        // arts
        let arts = Arts(name: "MoMA. Items: Is Fashion Modern?", cost: 12)
        arts.genre = .modern
        arts.teaser = "Items: Is Fashion Modern? explores the present, past—and sometimes the future—of 111 items of clothing and accessories that have had a strong impact on the world in the 20th and 21st centuries—and continue to hold currency today. "
        arts.ageLimit = 0
        options.append(arts)

        // gastronomy
        let gastronomy = Gastronomy(name: "Horseback riding", cost: 60)
        gastronomy.cuisine = "Italian"
        gastronomy.dressCode = .casual
        gastronomy.minNumberOfPeople = 4
        options.append(gastronomy)

        return options
    }

    //initializer
    init(name: String, cost: Double) {
        self.name = name
        self.cost = cost
        location = ""
    }

    func tellStory() -> String {
        return "It was fun to experience \(name)"
    }
}

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

class Activity: Entertainment {
    var weatherConditions = ""
    var equipmentRequired = ""
    var difficulty: Difficulty = .intermediate

    override func tellStory() -> String{
        // intro - print using the parent implementation
        super.tellStory()

        var story = " "

        // mention about weather requirements
        story += "Oh, the weather requirement: \(weatherConditions). "

        // tell about equipment requirements
        story += "And the equipment: \(equipmentRequired). "

        // finish off with the financial impact:)
        if cost <= 30 {
            story += "All that for ONLY $\(cost). "
        }
        else if cost >= 100 {
            story += "It was costly - $\(cost) - but definitely worth it. "
        }
        else {
            story += "It was afforable at a price of $\(cost). "
        }

        // share the full story
        return story
    }
}

class Arts: Entertainment {
    var genre: Genre = .modern
    var teaser = ""
    var ageLimit = 0

    override func tellStory() -> String{
        // intro
        var story = "\(name) was an interesting experience! "

        // talk about genre
        story += " It was \(genre.rawValue) - "
        switch genre {
        case .modern:
            story += " my cup of tea! "
        default:
            story += " I'm not a big fan, but it was educational! "
        }

        story += teaser

        // mention age restrictions
        if ageLimit > 0 {
            story += "You must be at least \(ageLimit) years of age to participate. "
        }
        else {
            story += "It's suitable for everyone. "
        }

        // finish off with the financial impact:)
        story += "It cost me $\(cost). "

        // share the full story
        return story
    }
}

class Gastronomy: Entertainment {
    var dressCode: DressCode = .casual
    var cuisine = ""
    var minNumberOfPeople = 1

    override func tellStory() -> String{
        // intro
        var story = "\(name) was outstanding! "

        // tell about cuisine
        story += "\(cuisine) cuisine was delicious. "

        // mention booking requirements
        if minNumberOfPeople > 1 {
            story += "I could go by myself - loved the food! "
        }
        else {
            story += "The place required minimum \(minNumberOfPeople) for booking. We all loved the food! "
        }

        // share the dress code info
        story += "There was a \(dressCode.rawValue) - "
        switch dressCode {
        case .streetwear:
            story += " no need change before going! "
        case .casual:
            story += " nothing fancy, very simple! "
        case .formal:
            story += " - a great opportunity to dress up! "
        }

        // finish off with the financial impact:)
        story += "All that for $\(cost). "

        // share the full story
        return story
    }
}

class Destination {
    // properties
    var name: String
    var cost: Double
    var entertainmentOptions: [Entertainment]
    var accomplishments: [Entertainment]

    // initializer
    init(name: String, cost: Double, entertainmentOptions: [Entertainment]) {
        self.name = name
        self.cost = cost
        self.entertainmentOptions = entertainmentOptions
        accomplishments = []
    }

    // methods
    func pickEntertainment(availableBudget: Double) -> Entertainment? {
        return nil
    }

    // tell story
    func tellStory() -> String {

        // create a variable to collect the sum of accomplishments cost
        var accomplishmentsCost = 0.0

        // intro
        var story = "It was great to visit \(name) "

        // summary
        if accomplishments.count > 0 {
            story += "While there I was lucky to have an opportunity to do \(accomplishments.count) things: "
        }
        else {
            story += "Sadly I wasn't able to do anythng there:( "
        }

        for entertainment in accomplishments {

            // add individual story
            story += entertainment.tellStory()

            // highlight sublass specific info
            if let activity = entertainment as? Activity {
                story += "I liked that it was \(activity.difficulty) "
            }
            else if let arts = entertainment as? Arts {
                story += "I liked that it was of \(arts.genre) genre "
            }
            else if let gastronomy = entertainment as? Gastronomy {
                story += "I liked that it was of \(gastronomy.cuisine) cuisine "
            }

            // include the cost in total
            accomplishmentsCost += entertainment.cost
        }

        // financial impact
        story += "The visit without entertainment cost me $\(accomplishmentsCost + cost). "
        story += "The total cost including entertainment amounted to $\(accomplishmentsCost + cost). "

        return story
    }
}

var destination = Destination(name: "New York City", cost: 800.0, entertainmentOptions: Entertainment.generalOptions) // cheating
destination.accomplishments = Entertainment.generalOptions // cheating

print(destination.tellStory())
