factorial = 100

99.downto(1){|x|
  factorial = x * factorial
}

total = 0
for x in factorial.to_s.split("")
  total = total + x.to_i
end

puts total
