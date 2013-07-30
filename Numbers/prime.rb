# Prime Factorization - Have the user enter a number
# and find all Prime Factors (if there are any) and
# display them.

def is_a_prime(x)
  is_prime = true
    for i in Range.new(2, x-1)
        if(x % i == 0)
            is_prime = false
            break
        end
    end
    is_prime
end



print "Enter the number to find prime factors of: "
n = gets.chomp.to_i

factors = Array.new

for i in Range.new(2, n)
  if n % i == 0
    if is_a_prime(i)
      factors.push i
      n /= i
    end
  end
end
puts factors.to_s
