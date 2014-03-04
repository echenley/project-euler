=begin

An irrational decimal fraction is created by concatenating the positive integers:
  0.123456789101112131415161718192021...
If d(n) represents the nth digit of the fractional part, find the value of the following expression.
  d(1) × d(10) × d(100) × d(1000) × d(10000) × d(100000) × d(1000000)

=end

dec = '.'
n = 1

while dec.length < 1_000_001
  dec << n.to_s
  n += 1
end

p [dec[1].to_i,dec[10].to_i,dec[100].to_i,dec[1000].to_i,dec[10000].to_i,dec[100000].to_i,dec[1000000].to_i]
p dec[1].to_i * dec[10].to_i * dec[100].to_i * dec[1000].to_i * dec[10000].to_i * dec[100000].to_i * dec[1000000].to_i
