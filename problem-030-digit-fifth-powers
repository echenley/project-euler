# Find the sum of all the numbers that can be written
# as the sum of fifth powers of their digits

totals = []

  # With a 7 digit number, the max value is 9^5 * 7 = 413343 (only 6 digits long)
  # Thus, 9^5 * 6 = 354294 is upper bound (digit-fifth-power of 999,999)

for n in 10..354294
  val = n.to_s.split('').map {|s| s.to_i }.inject(0) { |sum,x| sum + (x ** 5) }
  totals << val if n == val
end

p totals
p totals.inject(:+)
