# Find the sum of all numbers which are equal
# to the sum of the factorial of their digits

# second version is more concise but half the speed as first

require 'benchmark'

Benchmark.bm do |b|

  b.report do
    
    factorials = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
    factorial_nums = []
    nums = []
    
      # first, get sum of digit factorials for each number up to 3 million
      
    for n in 2..7 do                                      # digits 2-7
      [*0..9].repeated_combination(n).each do |arr|       # all n-digit numbers, in array form (e.g. [1,0,5,0,0,8,9,0] == 1_050_890)
        break if (n == 7 && arr[0] > 2)                   # breaks when it hits 3_000_000
        nums << arr.map { |i| factorials[i] }.inject(:+)  # adds sum of factorials to "nums"
      end
    end
    nums.uniq!.reject! { |x| x < 10 }                     # removes duplicates and single digit nums BEFORE second calculation
    
      # second, check each num vs sum
      
    nums.each do |num|
      sum = num.to_s.split('').inject(0) { |sum,x| sum + factorials[x.to_i] }
      factorial_nums << num if num == sum
    end
    
    p factorial_nums
    p factorial_nums.inject(:+)
    
  end
  
  b.report do
    
    factorials = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
    factorial_nums = []
    nums = []
    
    for n in 2..7 do
      [*0..9].repeated_combination(n).each do |arr|
        break if (n == 7 && arr[0] > 2)
        num = arr.map { |i| factorials[i] }.inject(:+)
        sum = num.to_s.split('').inject(0) { |sum,x| sum + factorials[x.to_i] }
        factorial_nums << num if num == sum
      end
    end
    factorial_nums.uniq!.reject! { |x| x < 10 }       # removes duplicates and single digit nums AFTER second calculation
    
    p factorial_nums
    p factorial_nums.inject(:+)
    
  end
end
