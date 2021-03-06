# What is the 10 001st prime number?

def prime_get(upto)
    primes = [2,3]
    pos_prime = 5
    while primes.length < upto
      limit = Math.sqrt(pos_prime).floor
      divisor = 3
      primes.push(pos_prime) if divisor > limit
      while divisor <= limit
        break if pos_prime % divisor == 0
        primes.push(pos_prime) if (divisor + 2) > limit
        divisor += 2
      end
      pos_prime += 2
    end
    return primes[-1]
end

upto = 10001
puts "Prime \##{upto}: #{prime_get(upto)}"
