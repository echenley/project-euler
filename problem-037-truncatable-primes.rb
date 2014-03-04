# Find the sum of the only eleven primes that are both
# truncatable from left to right and right to left.

require 'prime'

trunks = []                                         # stores truncatable primes

Prime.each do |prime|
  next if prime < 10
  arr = prime.to_s.split('').map { |x| x.to_i }
  trunk = true
  
  cache = []                                        # for popped/shifted digits
  (arr.length-1).times do                           # checks left to right truncatability
    cache << arr.shift
    num = arr.join('').to_i
    (trunk = false; break) unless Prime.prime?(num)
  end
  next if trunk == false
  cache.reverse.each { |n| arr.unshift(n) }         # rebuilds prime array
  
  cache = []
  (arr.length-1).times do                           # checks right to left truncatability
    cache << arr.pop
    num = arr.join('').to_i
    (trunk = false; break) unless Prime.prime?(num)
  end
  next if trunk == false
  cache.reverse.each { |n| arr.push(n) }            # rebuilds prime array
  
  trunks << arr.join('').to_i                       # adds prime to trunks
  break if trunks.length == 11
end

p trunks
p trunks.inject(:+)
