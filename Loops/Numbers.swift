//Numbers

var randomNumber = Int.random(in: 1...100)

//even or odd
switch randomNumber {
  case let x where x % 2 == 0:
    print("\(randomNumber) is even")
  case let x where x % 2 == 1:
    print("\(randomNumber) is odd")
  default:
    print("Invalid")
}

//prime or composite
switch randomNumber {
  case let x where x % 2 == 0:
    print("\(randomNumber) is Composite")
  case let x where x % 3 == 0:
    print("\(randomNumber) is Composite")
  default:
    print("\(randomNumber) is Prime")
}