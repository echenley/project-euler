# Find the sum of the digits in the number 100!

(2..100).inject(:*).to_s.split('').map{ |x| x.to_i }.inject(:+)
# => 648
