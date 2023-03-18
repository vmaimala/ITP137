print("Please enter a string") 


  if let input = readLine() {
     if let charValue = mostFrequentCharacter(input){
      print("The most frequent character is " +  String(charValue))
    }
  }
  else {
    print ("error try again")
  }

func mostFrequentCharacter(_ input: String) -> Character? { 

  var maxCount = 0
  var maxChar: Character?

  for char in input {
    print("This is the char \(char)")
    var count = 0 

    for otherChar in input {
        print("This is the otherChar \(otherChar)")
        print("This is the count before line 49 \(count)")
      
        if otherChar == char {
        count+=1
        print("This is the count before line 51 \(count)")
      }  
    }
    
    if count > maxCount {
      maxChar = char
      maxCount = count
    }
  }

return maxChar
} 