//github.com/nayyarahmed/ScopeDemoCodes

import UIKit
var str = "T3- Demo Code for Scope Description in Variables!"
print(str)
print("Let's Get Started!")


//Global Variable Example : Accessible within the entire Program
var globalVariable = true
if globalVariable {
    let localVariable = 7
    print(localVariable)
}

//Global Variable Example : Accessible in the entire Program
var count : Int = 20
print("Value of count is: \(count)")


//index variable is local to FOR Loop and thus not accessible outside!
for myVar in 1...3{
    print(myVar)
    }
// print(myVar) // Errorenous Statement (Since myVar is outside scope)


//Variable Shadowing Example: The shadow variable retrieves back old value once the instance is reached.
var name = "Nayyar"
for name in name{
    print(name)
}
print(name)
//Not a good practice, Confusing?? Annoying? But some developers use this as well.


//Local Variable Example: Accessible within the Scope of Function!

let gitID = "nayyarahmed"
func fun (name: String, age: Int)
{
    let email = "nayyar@su.edu.sa"
    print("Hello \(name), your age is : \(age)")
    print("My Email : \(email)")
}

fun(name: "Nayyar", age: 35) // Function Call envokes local variable
//print(email)
print(gitID)
//ERROR CODE


//Variable Shadowing in Structures!
struct Person{
    var name: String
    var age: Int
    
//Self shadowing is the best way to shadow a variable and values.
    init(name: String, age:Int){
        self.age = age
        self.name = name
    }
}
//Declaring an object of the Structure
let myself = Person(name: "Nayyar", age: 35)

//Printing the self shadowed variable values in the object
print(myself)



//What can be a good Solution! ??? Returning Values from Functions
func myFunc () -> Int
{
    let value = 100
    return value
}
var retVal = myFunc()
print(retVal)


// EXAMPLES FROM KEYNOTES :
var age = 55
func printMyAge() {
  print("My age: \(age)")
}
print(age)
printMyAge()


func printBottleCount() {
    let bottleCount = 99
    print(bottleCount)
}
printBottleCount()
//print(bottleCount)
//Errorenous Code!

func printTenNames() {
  let name = "Richard"
  for index in 1...10 {
    print("\(index): \(name)")
  }
  print(index)
  print(name)
}
printTenNames()


let points = 100
for index in 1...3 {
  let points = 200
  print("Loop \(index): \(points+index)")
}
print(points)


var newName: String? = "Robert"
if let newName = newName {
 print("My name is \(newName)")
}

func exclaim(name: String?) {
  if let name = name {
    print("Exclaim function was passed: \(name)")
  }
}

func newExclaim(name: String?) {
  guard let name = name else { return }
  print("Exclaim function was passed: \(name)")
}
