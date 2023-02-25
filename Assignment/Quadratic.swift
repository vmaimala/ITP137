//Quadratic

import Foundation
import Glibc

//Input
print("ax^2 + bx + c = 0")
print("Please enter a:")
var a = Double(readLine()!)!

print("Please enter b:")
var b = Double(readLine()!)!

print("Please enter c:")
var c = Double(readLine()!)!

var root1: Double
var root2: Double

//The positive root
root1 = (-b + (b*b - 4*a*c).squareRoot()) / (2*a)

//The negative root
root2 = (-b - (b*b - 4*a*c).squareRoot()) / (2*a)

//Output
print("Root 1 is \(root1)")
print("Root 2 is \(root2)")