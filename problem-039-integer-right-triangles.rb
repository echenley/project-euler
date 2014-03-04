=begin
  If p is the perimeter of a right angle triangle with integral length sides, {a,b,c},
  there are exactly three solutions for p = 120.

  {20,48,52}, {24,45,51}, {30,40,50}

  For which value of p ≤ 1000, is the number of solutions maximised?
=end

perim_totals = Hash.new(0)

for a in 1..292
  b_limit = ((1000 * (a - 500))/(a-1000))
  for b in 1..b_limit
    c = Math.sqrt((a ** 2) + (b ** 2))
    next if c.to_i != c
    p = a + b + c
    perim_totals[p] += 1
  end
end

p perim_totals.select { |k, v| v == perim_totals.values.max }.keys
