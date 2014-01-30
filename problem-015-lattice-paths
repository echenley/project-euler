# Starting in the top left corner of a 2×2 grid, and
# only being able to move to the right and down, there
# are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 20×20 grid?

def lattice(x)
  total = x * 2
  n = (total - 1)     # assigns the numerator at total-1
  d = 2.to_f          # assigns denominator at 2
  while n > d
    total *= (n / d)  # multiplies total by the above until j > n
    n -= 1
    d += 1
  end
  total.to_i
end

gridsize = 20
p lattice(gridsize)
