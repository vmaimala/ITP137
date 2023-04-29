import Foundation
import Glibc

//Dictionary
var lettersToMorse: [String: String] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
  ".": ".-.-.-",
  "!": "-.-.--",
  "?": "..--..",
  ",": "--..--"
]

//Encrypt
print("Enter your message: ") 
let text = readLine()!

var encodedText = ""

for element in text {
  if let morseChar = lettersToMorse["\(element)"] {
    encodedText += morseChar + " "
  }
  else {
    encodedText += " "
  } 
}

print ("Encrypt: \(encodedText)")

//Decrypt
print("Enter your morse: ") 
let morseText = readLine()!

var decodedMessage = ""
var currMorse = ""
var morseCodeArray = [String]()

for char in morseText {
  if char != " " {
    currMorse.append(char)
  } 
  else {
    switch currMorse {
      case "": 
        currMorse += " "
      case " ":
        morseCodeArray.append(" ")
        currMorse = ""
      default:  
        morseCodeArray.append(currMorse)

        currMorse = ""
    }
    
  }
}

morseCodeArray.append(currMorse)

var morseToLetter: [String: String] = [:]

for (letter,morseChar) in lettersToMorse {
  morseToLetter[morseChar]=letter
}

for morseValue in morseCodeArray {
  if let letterChar = morseToLetter[morseValue] {
    decodedMessage += letterChar
  }
  else {
    decodedMessage += " "
  }
}

print ("Decrypt: \(decodedMessage)")
