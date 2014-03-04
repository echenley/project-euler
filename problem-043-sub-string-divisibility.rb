require 'prime'

permutations = [*0..9].permutation.to_a
primes = Prime.first(7).to_a
winners = []

permutations.each do |perm|
  sub_div = true
  for x in 1..7
    sub = perm[x,3].join('').to_i
    (sub_div = false; break) if sub % primes[x-1] != 0
  end
  winners << perm.join('').to_i if sub_div == true
end

p winners.inject(:+)