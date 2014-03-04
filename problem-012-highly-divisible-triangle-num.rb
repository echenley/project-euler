# What is the value of the first triangle number to have over five hundred divisors?

def next_trinum(trinums)
 trinums[-1] + (trinums.length + 1)
end

def get_divisors(limit)
  trinums = [1]
  loop do
    divisors,div = [],1
    while div <= Math.sqrt(trinums[-1]).floor
      if trinums[-1] % div == 0
        other_div = trinums[-1] / div
        divisors.push(div,other_div)
      end
      trinums[-1].odd? ? div += 2 : div += 1
    end
    divisors.length <= limit ? trinums.push(next_trinum(trinums)) : (return trinums[-1])
  end
end

p get_divisors(500)
