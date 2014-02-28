# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

palindromes = []

for n in 1..6 do
  [*'0'..'9'].repeated_permutation(n).each do |arr|
    decimal = arr.join('')
    next if decimal != decimal.reverse
    decimal = decimal.to_i
    binary = decimal.to_s(2)                          # converts decimal into binary string
    next if binary != binary.reverse
    palindromes << decimal
  end
end

p palindromes.uniq.inject(:+)
