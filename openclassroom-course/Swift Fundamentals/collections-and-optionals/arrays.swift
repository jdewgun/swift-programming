/*
 Initialization, Declaration, Utilization and Arrays
 */


// Initialization Examples

var a = String() // ""
var b = Int() // 0
var c = Float() // 0.0
var d = Double() // 0.0
var e = Bool() // false

var stringArray = [String]()
var intArray = [Int]()
var doubleArray = [Double]()
var floatArray = [Float]()

// Array Operations

var baseArray = [11, 12, 13, 14]

baseArray.append(15) // Appends to tail
print(baseArray)
baseArray.remove(at: 2) // Removes Element in Array
print(baseArray)
baseArray.insert(20, at: 2) // Appends given position, the given element
print(baseArray)

print(baseArray.count) // Counts the element present in the array

/* Another way to look at array.append() is as follows,
        array.insert(elementToInsert, at: array.count)
 */


// Iteration over an Array

var myFriends = ["Bob", "Hob", "Rob"]

for friend in myFriends {
    print("What's up \(friend)?")
}


// Exercise

// initial profits for all categories
var profits = [0.0, 0.0, 0.0]

// profit calculation for 2 months
for day in 1 ... 60 {
    if (day % 7 == 5) { // if Saturday
        profits[0] += (2.70 - (0.50 + 1.00)) * 450 // coffee
        profits[1] += (5.50 - (3.50 + 0.00)) * 180 // dessert
        profits[2] += (15.0 - (7.00 + 5.00)) * 120 // food
    }
    else if (day % 7 != 6) { // other days of the week excluding Sundays
        profits[0] += (2.70 - (0.50 + 1.00)) * 560 // coffee
        profits[1] += (5.50 - (3.50 + 0.00)) * 240 // dessert
        profits[2] += (15.0 - (7.00 + 5.00)) * 80 // food
    }
}

// find out the most profitable category
if (profits[0] > profits[1] && profits[0] > profits[2]) { // compare the first element to the rest
    print("Coffee is the most profitable category")
}
else if (profits[1] > profits[0] && profits[1] > profits[2]) { // compare the second element to the rest
    print("Dessert is the most profitable category")
}
else if (profits[2] > profits[0] && profits[2] > profits[1]) { // compare the third element to the rest
    print("Food is the most profitable category")
}


var totalProfit = 0.0

// put together profits for all categories
for profit in profits {
    totalProfit += profit
}

// preset the final result
print("The total profit for 2 months is $\(totalProfit)")
