# How many circular primes are there below one million?

require 'prime'

circle_primes = []

Prime.each(1_000_000) do |prime|
  arr = prime.to_s.split('').map { |x| x.to_i }
  circle = true
  temp = []
  arr.length.times do
    num = arr.join('').to_i
    (circle = false; break) unless Prime.prime?(num)
    temp << num
    arr.unshift(arr.last).pop
  end
  circle_primes << temp if circle
end

p circle_primes.flatten(1).uniq!
p circle_primes.length #=> 55
