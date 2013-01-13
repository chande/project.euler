require 'date'

count = 0
date = Date.new(1901, 1 , 1)

date.upto(Date.new(2000, 12, 31)) do |day| 
count += 1 if day.wday == 0 and day.mday == 1 
end

p count
