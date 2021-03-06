# Next Prime Number - Have the program find prime
# numbers until the user chooses to stop asking for
# the next one.

def next_prime(current)
    next_prime = current + 1 # start checking for primes 1 number after the current one
    i = 2
    while(next_prime > i) # check with numbers up to next_prime - 1
      if(next_prime % i == 0) # if number is divisible
          next_prime += 1 # ready to check the next number
          i = 2 # reset i to check divisibility again from 2
      else
          i += 1 # increment the divisor
      end
    end
    next_prime
end

current_prime = 2
while (1)
  print 'Do you want the next prime? (Y/N) '
  response = gets.chomp
  if response.downcase.start_with? 'y'
    puts current_prime
    current_prime = next_prime(current_prime)
  else
    break
  end
end