# Find the sum of all the primes below two million.

def primes_get(upto)
  primes = [2,3]
  pos_prime = 5
  while pos_prime < upto
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
  primes.inject(:+)
end

upto = 2000000
sum = primes_get(upto)

puts "The sum of all primes below #{upto} is: #{sum}"
