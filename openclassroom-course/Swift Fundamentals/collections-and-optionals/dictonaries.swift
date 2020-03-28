/*
 Working with Dictionaries
 -------------------------

 - Lists with elements (Key: Value)
 - Keys and Value can differ in types however, the values within a dictionary need to be of the same type and
    same goes for the keys. You cannot have [1: "John", "lastName": 2], you need it to be [1: "Foo", 2: "Bar"]
*/

// Declaration

var dictionaryValues: Dictionary<String, Int> // base Declaration
var dictionaryVal: [String: Int] // short Declaration


dictionaryVal = ["Devs": 8, "PM": 2, "CTO": 1, "CPO": 1] // Values assignments
var techTeam: [String: Int] = ["Devs": 8, "PM": 2, "CTO": 1, "CPO": 1] // Values assignments and type specification

var dictVal = [String: Int]() // Type Specification and Default Init
var dictValues: [String: Int] = [:] // Empty Dictionary Assignment

// Mutability

print(techTeam["Devs"]!)

techTeam["Devs"]! += 1 // We Hired a New Dev

print(techTeam["Devs"]!)


print(techTeam)
techTeam["CDO"] = 1 // We hired a new Chief Data Officer
print(techTeam)
// Couting Elements
print("We have \(techTeam.count) people in the tech team")

// Deleting Elements
// We are creating a Data Team and the CDO will not be part of tech
techTeam.removeValue(forKey: "CDO")
print(techTeam)


// Browsing Elements
for (teamMember, countOfMembers) in techTeam{
    print("There are \(countOfMembers) \(teamMember) in our team")
}
