/*
    While Loop
    ----------
 */


var numberOfCapuccinos = 0

while numberOfCapuccinos < 10 {
    numberOfCapuccinos += 1
    print("I've had \(numberOfCapuccinos) cups of Cappucinos")
}
print("Too much coffee.")

var Year = 1970
let yearOfBirth = 1994


while yearOfBirth > Year {
    print("The year is \(Year). I was not born.")
    Year += 1
}

print("We're in year \(Year) and this is the year I was born.")


// Exercise

// Initial data
let goal = 1499.0
var money = 0.0
let trialPeriod = 30
let dailyInvestment = 10.0
let pastryCost = 2.50
let pastryPrice = 5.50
let numberOfPastries = dailyInvestment / pastryCost

var day = 1
while money < goal {
    if day % 7 != 6 {
        if day <= trialPeriod {
            // Jenny tops up savings money from her daily profit
            if day == 1 {
                money += dailyInvestment * 2
            } else if day == 10 || day == 20 {
                money += dailyInvestment * 3
            } else {
                money += dailyInvestment
            }
            // Jenny spends daily allowance to purchase as many pasteries as she can
            money -= pastryCost * numberOfPastries
            // Jenny sells new pastries to her clients
            money += numberOfPastries * pastryPrice
        }
        else {
            money += dailyInvestment
        }
    }

    day += 1
}

print("It will take \(day - 1) days to save $\(money)") // $1502.0


