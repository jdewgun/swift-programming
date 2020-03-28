/*
 Optionals
 ---------

 Optionals are basically those values which are potentially available, however they may or may not
 be available yet
 */

// Declaration

var optionalVariable: String?
print(optionalVariable) // Throws Nil Value
optionalVariable = "Probable"
print(optionalVariable)

var nonOptionalVariable: String
// print(nonOptionalVariable) // Does not work and does not throw Nil value
nonOptionalVariable = "We know this is not probable"
print(nonOptionalVariable)

// Unwrapping Optionals

// Quick and Dangerous Method

var theOptionalVariable: String? = "I don't know"
print(theOptionalVariable!)

var theOptionalVariableError: String?
// print(theOptionalVariableError!) // Leads to Fatal Error, therefore this is dangerous


// Safe Method 1

var safeOptionalVariable: String?
safeOptionalVariable = "I don't know"

if safeOptionalVariable != nil {
    print(safeOptionalVariable)
}

// Safe Method 2

var safeOptionalVariable2: String?

safeOptionalVariable2 = "I really don't know"

if let tempSafeVariable = safeOptionalVariable2 {
    print(tempSafeVariable)
}


// Exercise for Dictionaries and Optionals
var profits = ["coffee": 0.0, "dessert": 0.0, "food": 0.0]

// profit calculation for 2 months
for day in 1 ... 60 {
    if (day % 7 == 5) { // if Saturday
        profits["coffee"]! += (2.70 - (0.50 + 1.00)) * 450 // coffee
        profits["dessert"]! += (5.50 - (3.50 + 0.00)) * 180 // dessert
        profits["food"]! += (15.0 - (7.00 + 5.00)) * 120 // food
    }
    else if (day % 7 != 6) { // other days of the week excluding Sundays
        profits["coffee"]! += (2.70 - (0.50 + 1.00)) * 560 // coffee
        profits["dessert"]! += (5.50 - (3.50 + 0.00)) * 240 // dessert
        profits["food"]! += (15.0 - (7.00 + 5.00)) * 80 // food
    }
}

// find out the most profitable category
if (profits["coffee"]! > profits["dessert"]! && profits["coffee"]! > profits["food"]!) { // compare the first element to the rest
    print("Coffee is the most profitable category")
}
else if (profits["dessert"]! > profits["coffee"]! && profits["dessert"]! > profits["food"]!) { // compare the second element to the rest
    print("Dessert is the most profitable category")
}
else if (profits["food"]! > profits["coffee"]! && profits["food"]! > profits["dessert"]!) { // compare the third element to the rest
    print("Food is the most profitable category")
}

// initial total profit
var totalProfit = 0.0

// put together profits for all categories
for (_, profit) in profits {
    totalProfit += profit
}

// preset the final result
print("The total profit for 2 months is $\(totalProfit)")
