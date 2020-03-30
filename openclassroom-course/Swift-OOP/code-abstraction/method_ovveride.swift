/*
 Override Method
 ---------------
    - `super` Keyword is used to access the properties and methods from the child class
    - `override` Keyword is used to modify a method implementation defined in a parent class
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

    func tellStory() -> String {
        print("It was fun to experience \(self.name!)")
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
    var difficulty: Difficulty = .intermediate

    override func tellStory() -> String{
        // intro - print using the parent implementation
        super.tellStory()

        var story = " "

        // mention about weather requirements
        story += "Oh, the weather requirement: \(weatherConditions). "

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

        // share teaser
        story += teaser

        // finish off with the financial impact:)
        story += "It cost me $\(cost). "

        // share the full story
        return story
    }
}

class Gastronomy: Entertainment {
    var dressCode: DressCode = .casual
    var cuisine = ""

    override func tellStory() -> String{
        // intro
        var story = "\(name) was outstanding! "

        // tell about cuisine
        story += "\(cuisine) cuisine was delicious. "

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
