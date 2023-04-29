import Foundation
import Glibc

print("Enter your choice: rock, paper, or scissors") 
let userInput = readLine()!

func user_choice(_ userInput: String) -> String {
  if userInput == "rock" || userInput == "paper" || userInput == "scissors"  {
    return userInput;
  } 
  else {
    return "You can only enter rock, paper, or scissors. Please Try again"
  }
}

func com_choice() ->  String {
  let random = Int.random(in: 0...2)
  
  switch random {
    case 0:
      return "rock"   
    case 1:
      return "paper"  
    case 2:
      return "scissors"
    default: 
     return "Try again"
  }
}

func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
  
  var decision: String = "It's a tie"
  
  switch userChoice {
    case "rock":
      if compChoice == "paper" {
        decision = "The computer won"
      } else if compChoice == "scissors"{
        decision = "The user won"
      }

    case "paper":
      if compChoice == "rock" {
        decision = "The user won"
      } else if compChoice == "scissors"{
        decision = "The computer won"
      }

    case "scissors":
      if compChoice == "rock" {
        decision = "The computer won"
      } else if compChoice == "paper" {
        decision = "The user won"
      }
    default: 
      print("Error")    
  }
  return decision
}

let userChoice = user_choice(userInput)
let compChoice = com_choice()

print("You threw \(userChoice)")
print("The computer threw \(compChoice)")
print(determineWinner(userChoice, compChoice))
