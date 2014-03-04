# What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

def get_permute(n,digits)
  perms = digits.permutation(10).to_a
  perms[n-1].join('').to_i
end

p get_permute(1_000_000,[*0..9])
