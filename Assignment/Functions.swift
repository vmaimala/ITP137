func lots_of_math(a: Int, b: Int, c: Int, d: Int) -> Int {
  let first = a + b
  let second = d - c
  let third = first * second

  print(first)
  print(second)
  print(third)
  return third % a
  }

print(lots_of_math(a: 1, b: 2, c: 3, d: 4))