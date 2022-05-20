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
func name(){
    
}
