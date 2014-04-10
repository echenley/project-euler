# Find the first four consecutive integers to have four distinct prime factors. What is the first of these numbers?

require 'prime'

x = 1
n = 0

loop do
  x.prime_division.length == 4 ? n += 1 : n = 0
  break if n == 4
  x += 1
end

p x - 3