=begin
  Main idea: Use Ruby's built-in string sort on the names
             after they are read in, and loop over the sorted list,
             using an alphabet-to-number dictionary and the index of
             the names in the sorted list to make the calculation.
=end

#parse file, sort names
names = File.read("names.txt").split(',').each { |x| x.gsub!("\"", "") }.sort

#create mapping between letters and position in alphabet
alphabetMap = {}
"A".upto("Z").each_with_index {|x, index|
  alphabetMap[x] = index + 1
}

#loop over all items in sorted list, find character sum, 
#multiply character sum by index in list
totalSum = 0
names.each_with_index{ |name, index|
  nameSum = 0
  name.each_char { |ch|
    nameSum += alphabetMap[ch]
  }
  totalSum += nameSum * (index + 1)
}

puts totalSum