//Piggy Bank

import Foundation
import Glibc

//Input
print("Please enter your amount: (pesos)")
var pesos = Double(readLine()!)!

print("Please enter your amount: (reais)")
var reais = Double(readLine()!)!

print("Please enter your amount: (soles)")
var soles = Double(readLine()!)!

var total: Double

//Pesos conversion rate: 0.00021
//Reais conversion rate: 0.19
//Soles conversion rate: 0.26
total = 0.00021 * pesos + 0.19 * reais + 0.26 * soles

//Output
print("US Dollars = $\(total)")