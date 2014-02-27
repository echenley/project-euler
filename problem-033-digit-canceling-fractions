nums = [*1..9].repeated_permutation(2).to_a
fractions = []

nums.each do |n|
  break if n[0] >= 5
  nums.each do |d|
    next if n == d || d[0] < n[0]         # skips if n and d are the same
    intersect = n & d                     # gets common digits
    next if intersect.length != 1         # skips if more than one intersecting digit (e.g. 21 and 12)
    fraction,join,cancel = [n,d],[],[]
    for x in 0..1 do
      join[x] = fraction[x].join('').to_i
      found = false; cancel[x] = fraction[x].reject{ |i| found = true if !found && i == intersect[0] }[0]
    end
    uncanceled = join[0].to_f / join[1]
    canceled = cancel[0].to_f / cancel[1]
    fractions << Rational(join[0], join[1]) if uncanceled == canceled
  end
end

p fractions.inject(:*).denominator #=> 100
