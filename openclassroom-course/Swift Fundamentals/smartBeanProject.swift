/*
 Final Code File for the smartBean Project
 ------------------------------------------
 */

// Defining Functions
func profit(cost: Double, price: Double) -> Double {
    return price - cost
}

func cost(costOfIngredients: Double, costOfService: Double) -> Double {
    return costOfIngredients + costOfService
}

// Profits Information
var profits = ["coffee": 0.0, "dessert": 0.0, "food": 0.0]

// Product Information
var price = ["coffee": 2.70, "dessert": 5.50, "food": 15.0]
var costOfIngredients = ["coffee": 0.50, "dessert": 3.50, "food": 7.00]
var costOfService = ["coffee": 1.0, "dessert": 0.0, "food": 5.0]

// Sales Information
var unitsWeekdays = ["coffee": 560, "dessert": 240, "food": 80]
var unitsWeekends = ["coffee": 450, "dessert": 180, "food": 120]

// profit calculation for 2 months
for day in 1 ... 60 {

    var units: [String: Int]

    switch day % 7 {
    case 5: // Saturdays
        units = unitsWeekends
    case 6: // Sundays
        units = ["coffee": 0, "dessert": 0, "food": 0]
    default: // Weekdays
        units = unitsWeekdays
    }

    for (category, _) in profits {
        profits[category]! += profit(cost: cost(costOfIngredients: costOfIngredients[category]!, costOfService: costOfService[category]!), price: price[category]!) * Double(units[category]!)
    }
}

// find out the most profitable category
var keyVal = ""
var maxProfit = 0.0

for (category, profit) in profits {
    if (profit > maxProfit) {
        maxProfit = profit
        keyVal = category
    }
}

var categoryTitle: String

switch keyVal {
    case "coffee":
        categoryTitle = "Delicious coffee"
    case "dessert":
        categoryTitle = "Divine desserts"
    case "food":
        categoryTitle = "Gourmet food"
    default:
        categoryTitle = "Unknown"
}

//display the winner category
print("\(categoryTitle) is the most profitable category that generated $\(Float(maxProfit)) in 2 months")

// initial total profit
var totalProfit = 0.0

// put together profits for all categories
for (_, profit) in profits {
    totalProfit += profit
}

// preset the final result
print("The total profit for 2 months is $\(totalProfit)")
