import UIKit

//VARIABLES - VAR

//int
var broj = 10;
//string
var ime = "Aleksa"
//double or float
var pi = 3.1415
//boolean
var isTVon = true


//PRINTING
print(ime)
print("My name is \(ime).")

//CONSTANTS - LET
let lastName = "Dimitrijevic"
//lastName = "newLastName" - this is not permited!

//EXPLICIT TYPE CASTING
var str: String = "Aleksa"
var anInteger: Int = 100
var aFloat: Float = 0.2
var aDouble: Double = 0.3
var aBool: Bool = false

//MATH FUNCTIONS
print(pow(2,3))
print(sqrt(4))
print(ceil(3.8))
print(floor(3.8))

//INCREMENTS
var a = 1
a+=1
print(a)
//there is no a++

//IF-ELSE
var a1 = -1

if a1<0 {
    print("a less than 0")
} else if a1 > 3 && a1 < 4
{
    print("number is greater than 3 and less than 4")
}
else {
    print("number is greater than 4")
}

//SWITCH
let chr = "b";

switch chr{
case "a":
    print("this is a")
case "b", "c":
    print("this is b or c")
default:
    print("fallback")
}

//FOR
for _ in 1...5{ //without variable that saves number of iterations
    print("Hello")
}

for a in 1...5{
    print(a)
}

var sum = 0
for counter in 1...5{
    sum += counter
}
print("Sum is: \(sum)")

//WHILE
var counter = 5
while counter > 0{
    print("While")
    counter -= 1
}

//REPEAT-WHILE
var counter2 = 5
repeat{
    print("Yes")
    counter2-=1
}while counter2>0 //analogija sa do-while


//FUNCTIONS
func addTwoNumbers(){
    let a = 1
    let b = 2
    let c = a + b
    print(c)
}
addTwoNumbers()
//print(c) - scope of variable c is only inside function brackets

func addTwoNumbers2()-> Int{
    let a = 1
    let b = 3
    let z = a + b
    return z
}
let add = addTwoNumbers2()
print(add)

func addTwoNumbers(number1: Int, number2: Int)-> Int{
    let a = number1
    let b = number2
    let c = a + b
    return c
}
let add2 = addTwoNumbers(number1: 5, number2: 15)
print(add2)

func addTwoNumbers(using number1: Int, and number2: Int) -> Int {
    let a = number1
    let b = number2
    let c = a + b
    return c
}
let add3 = addTwoNumbers(using: 5, and: 5)
print(add3)

func addTwoNumbers(_ number1: Int, _ number2: Int) -> Int {
    let a = number1
    let b = number2
    let c = a + b
    return c
}
let add4 = addTwoNumbers(5, 5)
print(add4)

//CLASSES

class Employee{
    var name = ""
    var salary = 0
    var role = ""
    
    func doWork(){
        print("Doing work")
        salary += 1000
    }
}

var classVariable = Employee()
print("Name: \(classVariable.name), Salary: \(classVariable.salary), Role: \(classVariable.role)")

classVariable.name = "Aleksa"
classVariable.salary = 80000
classVariable.role = "UI/UX Designer"

print("Name: \(classVariable.name), Salary: \(classVariable.salary), Role: \(classVariable.role)")

classVariable.doWork()
classVariable.doWork()
classVariable.doWork()

print("Name: \(classVariable.name), Salary: \(classVariable.salary), Role: \(classVariable.role)")


var classVariable2 = Employee()
classVariable2.name = "Mark"
classVariable2.salary = 130000
classVariable2.role = "Manager"
classVariable2.doWork()

print("Name: \(classVariable2.name), Salary: \(classVariable2.salary), Role: \(classVariable2.role)")

//SUBCLASSING

class Manager:Employee{ // Manager class subclasses Employee class
    // Manager automatically inherit all properties and methods of Employee class
    // But also can implement new ones:
    
    var teamSize = 0
    
    override func doWork() { //modifying existing functionality from its parent class
        super.doWork() //call doWork() from parent class (Employee is the superclass of Manager)
        print("I'm managing people")
        salary += 5000
    }
}

var managerVariable = Manager()
managerVariable.name = "John"
managerVariable.salary = 150000
managerVariable.role = "Manager Role"
managerVariable.doWork()
managerVariable.teamSize = 15
print("Name: \(managerVariable.name), Salary: \(managerVariable.salary), Role: \(managerVariable.role), Team Size: \(managerVariable.teamSize)")

//INITIALIZERS

class Person{
    var name = "" //this is self.name later
    
    init(){
        name = "John" //if nothing is sent through parameter
    }
    
    init(_ name: String){
        self.name = name //uses the parameter sent through initialization of object
    }
}

var person1 = Person()
print(person1.name)

var person2 = Person("Aleksa")
print(person2.name)

class Worker:Person{
    var salary = 0
    var role = ""
    
    override init(_ name: String){
        super.init(name) // This is calling the init(_ name: String) function of the Person class
        self.role = "Default" // Additional init code
    }
}

var worker1 = Worker("Luke")
print("Name: \(worker1.name), Role: \(worker1.role)")

//OPTIONALS
//used to declare a variable as "empty"

var x: Int? = nil //none of usual data types allow nil as a valid value, so we have to add "?" in the end of data types, so they can allow nil and other valid values for certain type => OPTIONAL TYPES

class Random{
    func suprise()-> Int{
        return Int.random(in: 1...1000)
    }
}

let suprise = Random()
print(suprise.suprise())

let suprise2: Random? = nil //optional variable Random
if suprise2 != nil {
    print(suprise2!.suprise()) //unwrapping with "!" means that if our variable isn't null, we will give access to anything that's in it
}

let suprise3: Random? = Random()
if suprise3 != nil {
    print(suprise3!.suprise())
}

//OPTIONAL BINDING

if let actualSuprise = suprise3{
    print(actualSuprise.suprise())
} //if "suprise3" is nil, code won't be executed, otherwise Swift will automatically unwrap "suprise3" and assign its contents to constant "actualSuprise"

//OPTIONAL CHAINING

let suprise4: Random? = Random()

suprise4?.suprise() //"?" works same as "!", the only difference is if the optional turns out to be nil, the code will not crash and the entire line is ignored (that's why we don't need if statement)

//OPTIONALS DEFAULT VALUE

var opt: String? //opt is automatically given a value of nil
var opt2: String! //implicitly unwrapped optional - this is a normal optional, but when you use it in code, Swift automatically unwraps it for you, so you don’t need to use extra “?” or “!”s to get at its contents

