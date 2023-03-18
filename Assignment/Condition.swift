//Condition

//Input
print("Enter a string: ") 

//Output
  if let input = readLine() {
     if let charMax = mostOccurringCharacter(input) {
      print("The most occurring character is " +  String(charMax) + ".")
    }
  }

//Functions with Optional Return Types
func mostOccurringCharacter(_ input: String) -> Character? { 
  var maxCount = 0
  var maxChar: Character? //an optional Character declaration

  for char in input { //for-in Loop_count
    var count = 0 

    for otherChar in input { //for-in Loop_return the first appearance
        if otherChar == char {
        count += 1
      }  
    }
    
    if count > maxCount {
      maxChar = char
      maxCount = count
    }
  }

return maxChar
} 