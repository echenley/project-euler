# A palindromic number reads the same both ways.
# The largest palindrome made from the product
# of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the
# product of two 3-digit numbers.

def check_pal?(num)
    rev_check = num.to_s.split('').reverse.join('')
    num.to_s == rev_check ? true : false
end

def loop_pal(limit)
    largest_pal = [0,0,0]
    x = limit
    while x > 0 do
        y = limit
        while y >= x do
            num = x*y
            if check_pal?(num) && num > largest_pal[0]
                largest_pal = [num,x,y]
            elsif x*limit < largest_pal[0]
                return "#{largest_pal[1]} x #{largest_pal[2]} = #{largest_pal[0]}"
            end
            y -= 1
        end
        x -= 1
    end
end
puts loop_pal(999)
