require_relative 'problem-022-names-scores-names.rb'

letters = ("A".."Z").to_a
name_scores = []
letter_nums = {}
letters.each_with_index do |letter,i|
  letter_nums[letter] = i + 1
end

NAMES.each_with_index do |name,i|
  name_value = name.split('').map { |letter| letter_nums[letter] }.inject(:+)
  name_scores << name_value * (i + 1)
end

p name_scores.inject(:+)
