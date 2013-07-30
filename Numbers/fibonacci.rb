# -*- coding: cp1252 -*-
# Fibonacci Sequence - Enter a number and have the
# program generate the Fibonacci sequence to that number
# or to the Nth number

print "How many numbers do you need? "
n = gets.chomp.to_i
series = [1]

while (series.count < n)
  if series.count == 1
    series.push 1
  else
    series.push(series[-1] + series[-2])
  end
end

puts series.to_s
