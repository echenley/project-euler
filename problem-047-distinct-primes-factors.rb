# Find the first four consecutive integers to have four distinct prime factors. What is the first of these numbers?

require 'prime'

x,n = 1,0

while n < 4 do
  x += 1
  x.prime_division.length == 4 ? n += 1 : n = 0
end

p x - 3