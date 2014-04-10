# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

sum = 0

for x in (1..1000)
  sum += x ** x
end

p sum.to_s[-10..-1].to_i