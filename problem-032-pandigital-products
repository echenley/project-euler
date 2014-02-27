=begin

We shall say that an n-digit number is pandigital if it makes use of all the digits
1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing
multiplicand, multiplier, and product is 1 through 9 pandigital.

Find the sum of all products whose multiplicand/multiplier/product identity
can be written as a 1 through 9 pandigital.

=end

permutations = [*1..9].permutation.to_a
pandigitals = []

permutations.each do |perm|
  for x in 1..2 do
    multiplicand = perm[0,x].join('').to_i    # combines first x digits in perm into x-digit integer
    multiplier = perm[x,5-x].join('').to_i    # combines next (5-x) digits into integer
    product = perm[5,4].join('').to_i         # combines last 4 digits into integer
    pandigitals << product if multiplicand * multiplier == product
  end
end

p pandigitals.uniq.inject(:+)
