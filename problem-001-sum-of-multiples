# Project Euler - Problem 1 (ABOVE AND BEYOND LOL)
#
# If we list all the natural numbers below 10 that
# are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

sum = 0
upper_limit = 1000                          # enter any upper limit
multiples_of = [3,5]                        # enter any number of values

for m in 0...multiples_of.length
    for x in (multiples_of[m]...upper_limit).step(multiples_of[m])
        sum += x
    end                                     # adds total multiples
    
    if m == 0                               # then subtracts overlap (15,30...etc) 
        n = multiples_of[m]
    elsif m == multiples_of.length - 1
        n *= multiples_of[m]
        for s in (n...upper_limit).step(n)
            sum -= s                        
        end
    else
        n *= multiples_of[m]
    end
end

puts "#{sum.to_s} is the sum of all the multiples of #{multiples_of.inspect} below #{upper_limit.to_s}."
