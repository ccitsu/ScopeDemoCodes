import UIKit
var str = "T3- Demo Code for Scope Description in Variables!"
print(str)

//Global Variable Example : Accessible within the entire Program
var globalVariable = true
if globalVariable {
    let localVariable = 7
    print(localVariable)
}

//Global Variable Example : Accessible within the entire Program
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
func fun (name: String, age: Int)
{
    print("Hello \(name), your age is : \(age)")
}

fun(name: "Nayyar", age: 35) // Function Call envokes local variable




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
