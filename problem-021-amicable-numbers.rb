# Let d(n) be defined as the sum of proper divisors of n
# (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an
# amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10,
# 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper
# divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

def sum_divisors(num)
  divisors,div = [],1
  for div in 1..Math.sqrt(num).floor
    if num % div == 0
      divisors << div
      (other_div = num / div; divisors << other_div) unless div == 1
    end
    div += num.odd? ? 2 : 1
  end
  divisors.inject(:+)
end

def amicable(limit)
  amicables = []
  for num in 2...limit do
    next if amicables.include?(num)
    sum_of_divisors = sum_divisors(num)
    next if num == sum_of_divisors
    if sum_of_divisors < limit && num == sum_divisors(sum_of_divisors)
      amicables << num << sum_of_divisors
    end
  end
  amicables.inject(:+)
end

p amicable(10000) # => 31626
