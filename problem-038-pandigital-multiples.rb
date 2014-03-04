# What is the largest 1 to 9 pandigital 9-digit number
# that can be formed as the concatenated product of an
# integer with (1,2, ... , n) where n > 1?

target = *(1..9)
pandigitals = []

n = 9
while n < 9876        # anything higher would need more than 9 digits
  i = 1
  digits = []
  while i < 10
    pandigital = true
    (n * i).to_s.split('').map { |x| x.to_i }.each do |d|             # takes each digit in product...
      digits.include?(d) ? (pandigital = false; break) : digits << d  # ...and checks whether digits are already included
    end
    break if pandigital == false
    digits.sort!                                                      # sorts array
    (pandigitals << n; break) if digits == target                     # compares to target
    i += 1
  end
  n += 1
end

i = 1
digits = []
while digits.length != 9                                              # builds final answer
  (pandigitals.last * i).to_s.split('').map { |x| x.to_i }.each do |d|
    digits << d
  end
  i += 1
end

p digits.join('').to_i
#=> 932718654
