/*
 Introduction to Functions
 ----------------------
 */

// Basic Function Syntax

func helloWorld(){
    print("Hello World!")
}

helloWorld()

// Returns

func add2() -> Double{
    let base = 2.0
    let result = base + 2.0
    return result
}

var x = add2()
print(x)

print("The return value of the function is \(add2())")

// Type Conversions
let a = 1.0
let b = 2
// var sum = a + b // Does not work
var sum = a + Double(b)
print(sum)


// Exercise
func coffeeProfit() -> Float {
    let cost = 0.50 + 1.00
    let price = 2.70
    let profit = price - cost
    return Float(profit)
}

print("Profit for one portion of coffee is $\(coffeeProfit())")

