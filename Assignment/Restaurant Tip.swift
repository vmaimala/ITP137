//Input
import Foundation
import Glibc

print("Please enter your total: ")
var total = Double(readLine()!)!
print("Please enter your percentage: ")
var percentage = Double(readLine()!)!
  
//Functions
func tip(_ total: Double, _ percentage: Double) -> Double {
  let tipTotal = total * (percentage/100)
  return tipTotal
  }

print("Your Tips: $\(tip(total, percentage))")
