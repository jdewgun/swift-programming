/*
Functions w/ Parameters
-----------------------
*/

// Base Example
func incrementBy1(value: Int) -> Int {
    return value + 1
}

print(incrementBy1(value: 2))


// Example to not use parameter while calling func
func incrementVal(_ value: Int) -> Int {
    return value + 1
}

print(incrementVal(2))


// Multiple Parameters

func increment(valueToIncrement: Int, incrementBy: Int) -> Int{
    return valueToIncrement + incrementBy
}

print(increment(valueToIncrement: 2, incrementBy: 3))


// Example
func totalWeeklyHours(weeklyHours: [Int]) -> Int {
    var total = 0
    for dailyHours in weeklyHours {
        total += dailyHours
    }
    return total
}

var students = [String:[Int]]()
students["Jenny"] = [5, 6, 3, 4, 8, 1, 2]
students["Livia"] = [3, 4, 8, 1, 2, 0, 0]
students["Paul"] = [0, 6, 3, 4, 8, 10, 2]

for (student, hours) in students {
    print("\(student) spends \(totalWeeklyHours(weeklyHours: hours)) hours studying per week")
}


/*
 Side Note on Switch Cases
 -------------------------

 switch variable {
     case value1:
        Instructions 1
     case value2:
        Instructions 2
     case value3:
        Instructions 3
     default:
        Default instructions
 }

 (Exactly as Golang)

*/
