/*
    Implementing Enumerated Loops
    -----------------------------
 */

var a:String = "Hello World From Variable"

print("Hello World!")
print(42)
print(true)
print(a)


// Range based For Loop
for cup in 1...5{
    print("Make cappuccino.")
    print("Cup #\(cup).")
}

// Storing Range in variable
var myRange = 1...1000

// Closed Range

for i in 1...3 {
    print(i)
}

// Semi-Open Range
for i in 1..<3 {
    print(i)
}


var closedRange = 0...3
var semiOpenRange = 0..<4


for i in closedRange{
    print(i)
}

for i in semiOpenRange{
    print(i)
}

/*
    Exercise
    --------
*/

var dailyInvestment = 10.0
var crullerPrice = 2.50
var fancyPastry = 5.50

var investmentPeriod = 30

var money = 0.0

for _ in 1...investmentPeriod{
    // Putting Money Aside
    money += 10.0
    // Spending for Pastries
    money -= (2.50 * 10/2.50)
    // Selling Pastries
    money +=  (10/2.50 * 5.50)
}

print("Total Earnings $\(money)")

