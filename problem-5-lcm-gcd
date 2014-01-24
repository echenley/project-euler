# What is the smallest positive number that is evenly
# divisible by all of the numbers from 1 to 20?

def gcd(a,b)                    # uses Euler's method for finding GCD
    remainder = a % b
    remainder == 0 ? (return b) : gcd(b,remainder)
end

def lcm_get(numbers)
    x = numbers.length - 2
    lcm = numbers[-1]
    while x >= 0
        lcm = (lcm * numbers[x]) / gcd(lcm, numbers[x])
        x -= 1
    end
    lcm
end

numbers = *(1..20).sort         # handles any array of numbers
puts "lcm(#{numbers.join(',')}) = #{lcm_get(numbers)}"
