=begin
  Main idea: Calculate d() for each number below 10,000
             and store it in a lookup table. Use the lookup
             table to find amicable pairs by eliminating the
             possibility of duplicate lookups.
=end

def d(n)
  dResult = 0
  (n-1).downto(1) { |x|
    if (n % x == 0)
      dResult += x
    end
  }
  return dResult
end

#Populate lookup table
finalSum = 0
lookUp = Array.new(10000)
9999.downto(1) { |current|
  lookUp[current] = d(current)
  if (lookUp[current] == current)
    lookUp[current] = 0
  end
}

#Compare values, making sure duplicates are not compared.
9999.downto(1){ |check|
  if ((lookUp[check] != nil) && (check == lookUp[lookUp[check]]))
    puts "Found pair: (" + lookUp[check].to_s + ", " + check.to_s + ")"
    finalSum += lookUp[check] + lookUp[lookUp[check]]
    lookUp[lookUp[check]] = nil
  end
}

puts finalSum
