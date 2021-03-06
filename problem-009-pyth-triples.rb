# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def bounce_up(a,b,c,sum,upper,lower)
    add = ((upper - b) / 2).floor
    b += add
    c = sum - a - b
    done = true if upper - lower <= 2 || b >= upper
    return b,c,done
end

def bounce_down(a,b,sum,upper,lower)
    sub = ((b - lower) / 2).floor
    b -= sub
    c = sum - a - b
    done = true if upper - lower <= 2 || b <= lower
    return b,c,done
end

def check(sum)
    a = 1
    (sum - a) % 2 == 0 ? b = ((sum - a) / 2) - 1 : b = ((sum - a) / 2).floor
    c = sum - a - b
    while a < sum - 2
        lower = a
        upper = b
        done = false
        while a ** 2 + b ** 2 != c ** 2
            if a ** 2 + b ** 2 > c ** 2
                upper = b
                b,c,done = bounce_down(a,b,sum,upper,lower)
            else
                lower = b
                b,c,done = bounce_up(a,b,c,sum,upper,lower)
            end
            break if done == true
        end
    return a,b,c if a ** 2 + b ** 2 == c ** 2
    a += 1
    end
end

a,b,c = check(1000)
product = a * b * c
puts "#{a} * #{b} * #{c} = #{product}"
