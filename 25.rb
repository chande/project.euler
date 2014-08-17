#brute force

def fib(n)
  nMinusTwo = 1
  nMinusOne = 1
  sum = 0
  3.upto(n){ |num|
   sum = nMinusOne + nMinusTwo
   nMinusTwo = nMinusOne
   nMinusOne = sum
  }
  return sum
end

i = 1
while (fib(i).to_s.length != 1000)
  i += 1
end

p i