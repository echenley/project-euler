=begin

Considering quadratics of the form:

n² + an + b, where |a| < 1000 and |b| < 1000

where |n| is the modulus/absolute value of n
e.g. |11| = 11 and |−4| = 4

Find the product of the coefficients, a and b, for the quadratic expression that
produces the maximum number of primes for consecutive values of n, starting with n = 0.

=end

require 'prime'

limit = 999
a,b = -limit,-limit
max_primes = [0,0,0]

while a <= limit
  while b <= limit
    n = 0
    n += 1 while Prime.prime?((n ** 2) + (a * n) + b)
    if n > max_primes[0]
      max_primes = [n,[a,b],(a*b)]
    end
    a.even? ? b += 2 : b += 1
  end
  b = -limit
  a += 1
end

p max_primes
