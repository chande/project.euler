#brute force solution, still pretty fast in Ruby

sum = 0
for i in 1..1000
 sum += i**i
end

sum = sum.to_s
p sum[-10, 10]