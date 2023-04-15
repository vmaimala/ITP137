// Palindrome

//List1
var text = ["1", "0", "8", "0", "1"]
//List2
//var text = ["m", "a", "d", "a", "m"]
//List3
//var text = ["c", "o", "d", "e"]

//Array
var reversed = [String]()
var check = text.count - 1

while check >= 0 {
  reversed.append(text[check])
  check -= 1
}

//Output
if text == reversed {
  print("\(text) is a palindrome.")
}
else {
  print("\(text) is not a palindrome.")
}