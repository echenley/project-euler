=begin

By converting each letter in a word to a number corresponding to its alphabetical
position and adding these values we form a word value. For example, the word value
for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a triangle number then we
shall call the word a triangle word.

Using a 16K text file containing nearly two-thousand common English words,
how many are triangle words?

=end

require_relative 'problem-042-coded-triangle-numbers-words'

letter_values = {}
trinums = [1]
triangle_words = []

[*'A'..'Z'].each_with_index do |letter,i|
  letter_values[letter] = i + 1
end

WORDS.each do |word|
  value = word.split('').inject(0) { |sum,v| sum += letter_values[v] }
  trinums << (trinums[-1] + (trinums.length + 1)) while value > trinums[-1]
  triangle_words << word if trinums.include?(value)
end

p triangle_words.length # 162
