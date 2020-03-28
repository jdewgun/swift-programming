/*
    Conditional Code
    ----------------
 */

// initial data
var money = 0.0
let trialPeriod = 30
let dailyInvestment = 10.0
let pastryCost = 2.50
let pastryPrice = 5.50
let numberOfPastries = dailyInvestment / pastryCost

for day in 1...trialPeriod {
    // Jenny tops up savings money from her daily profit
    if day == 1 {
        money += dailyInvestment * 2
    }
    else if day == 10 || day == 10 {
        money += dailyInvestment * 3
    }
    else {
        money += dailyInvestment
    }
    // Jenny spends daily allowance to purchase as many pasteries as she can
    money -= pastryCost * numberOfPastries
    // Jenny sells new pastries to her clients
    money += numberOfPastries * pastryPrice
}

print("Total Savings in \(trialPeriod) day(s) are $\(money)") // $660.0


/*
Side Note on Operators:
-----------------------
 Comparison
 ----------
    == Equal To
    != Not Equal To
    > Greater Than
    < Less Than
    >= Greater Than Equal To
    <= Less Than Equal To

 Logical
 -------
    && And
    || Or
    ! Logical Not
*/
