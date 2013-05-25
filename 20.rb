=begin
  Main idea: Calculate 100! using Ruby's downto function,
             and iterate through the result, adding each digit
             to a running sum as it is encountered.
=end

#calculate 100!
factorial = 100
99.downto(1){|x|
  factorial = x * factorial
}

#calculate sum of digits in the result of 100!
total = 0
for x in factorial.to_s.split("")
  total = total + x.to_i
end

puts total
