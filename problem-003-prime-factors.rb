# The prime factors of 13195
# are 5, 7, 13 and 29.

# What is the largest prime factor
# of the number 600851475143 ?

def next_prime(pos_prime,dynum)
    while pos_prime <= Math.sqrt(dynum).floor 
        limit = Math.sqrt(pos_prime).floor
        divisor = 3
        return pos_prime if divisor > limit
        while divisor <= limit
            break if pos_prime % divisor == 0
            return pos_prime if (divisor + 2) > limit
            divisor += 2
        end
        pos_prime += 2
    end
    dynum
end

def prime_factors(dynum)
    primes = [2,3]
    factors = []
    n = 0
    while primes[n] <= dynum
        if primes[n] == dynum
            factors.push(primes[n])
            break
        elsif dynum % primes[n] == 0
            factors.push(primes[n])
            dynum /= primes[n]
            redo
        elsif n == primes.length - 1
            primes.push(next_prime(primes[n]+2,dynum))
        end
        n += 1
    end
    return primes,factors
end

num = 600851475143
primes,factors = prime_factors(num)
puts "Calculated primes: #{primes.inspect}"
puts "The prime factors of #{num} are #{factors.inspect}"
