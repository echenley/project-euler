=begin

We shall say that an n-digit number is pandigital if it makes
use of all the digits 1 to n exactly once. For example, 2143
is a 4-digit pandigital and is also prime.

What is the largest n-digit pandigital prime that exists?

=end

require 'prime'

largest_prime = 0

for n in 2..9
  permutations = [*1..n].permutation.to_a
  permutations.each do |p|
    p = p.join('').to_i
    largest_prime = p if Prime.prime?(p)
  end
end

p largest_prime