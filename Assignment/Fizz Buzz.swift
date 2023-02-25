//Fizz Buzz

for i in 1...100 {
  if (i % 3 == 0 && i % 5 == 0) {
    print("FizzBuzz") //a multiple of both 3 and 5, print FizzBuzz
  } else if (i % 3 == 0) {
    print("Fizz") //a multiple of 3(but not 5), print Fizz
  } else if (i % 5 == 0) {
    print("Buzz") //a multiple of 5(but not 3), print Buzz
  } else {
    print(i) //not a multiple of 3 or 5, print the value of i
  }
}