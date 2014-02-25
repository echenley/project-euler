# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

def divisors(num)
  divisors,div = [],1
  for div in 1..Math.sqrt(num).floor
    if num % div == 0
      divisors << div
      next if div == 1
      other_div = num / div
      divisors << other_div unless div == other_div
    end
    div += num.odd? ? 2 : 1
  end
  divisors
end

def non_abundant_sums(limit)
  abundants = []
  for i in 1...limit do                     # build abundants
    sum_of_divisors = divisors(i).inject(:+)
    abundants << i if sum_of_divisors > i
  end
  abundants_pairs = abundants.repeated_combination(2).to_a                                     # build combos
  sums_of_pairs = abundants_pairs.map { |a,b| a+b }.uniq.select { |e| e <= limit }.inject(:+)  # sums indiv. pairs, rejects duplicates and those whose sum > limit, then totals the whole set
  all = limit * (limit + 1) / 2             # sum of all nums up to the limit
  all - sums_of_pairs                       # subtracts nums which can be written as sum of two abundant nums
end

p non_abundant_sums(28123)
#=> 4179871
