# If all the numbers from 1 to 1000 (one thousand) inclusive
# were written out in words, how many letters would be used?

# Solves for any top number below 1 quadrillion

class Integer
    def count_letters
        
        ones = [0,3,3,5,4,4,3,5,5,4]  # 0,1 ... 9
        teens = [3,6,6,8,8,7,7,9,8,8] # 10,11 ... 19
        tens = [0,3,6,6,5,5,5,7,6,6]  # 0,10,20 ... 90
        hundred = 7                   # 'hundred'.length
        periods = [0,8,7,7,8]         # none, 'thousand' ... 'trillion'
        ands = 3                      # 'and'
        total = 0
        current_period = 0
        
        num = self.to_s.split('')

        until num.empty?
            num.length > 2 ? current = num.pop(3).join.to_i : current = num.pop(num.length).join.to_i
            if current < 10
                total += ones[current]
            elsif current < 20
                total += teens[current - 10]
            elsif current < 100
                total += tens[current / 10] + ones[current % 10]
            else
                total += ones[current / 100] + hundred
                total += ands unless current % 100 == 0
                current -= (current / 100) * 100
                (num.push(*format('%03d',current).to_s.split('')); redo) if current != 0
            end
            total += periods[current_period]
            current_period += 1
        end
        total
    end
end

p [*1..1000].map{ |i| i.count_letters }.inject(:+)
