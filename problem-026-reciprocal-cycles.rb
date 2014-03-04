# Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

cycle_lengths = [nil,nil]   # initializes with nil values for d = 0,1

for d in 2..1000
  n = 1
  n_list = [n]
  loop do               # basically does long division
    while n < d
      n *= 10
    end
    n %= d
    break if n == 0 || n_list.include?(n)
    n_list << n
  end
  cycle_lengths << n_list.length
end

p cycle_lengths.each_with_index.max[1]
