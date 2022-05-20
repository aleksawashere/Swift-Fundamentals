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
