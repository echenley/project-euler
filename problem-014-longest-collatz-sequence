# Which starting number, under one million, produces the longest Collatz chain?

def collatz(start,shortcut)
  n = start
  length = 1
  while n != 1
    (length += shortcut[n]; break;) if shortcut[n]
    n = n.odd? ? 3 * n + 1 : n / 2
    length += 1
  end
  shortcut[start] = length
  return length,shortcut
end

def longest_chain(limit)
  n = 13
  longest = [1,0]
  shortcut = {}               # used to lookup whether number has already been calculated
  while n < limit
    length,shortcut = collatz(n,shortcut)
    longest = [n,length] if length > longest[1]
    n += 1
  end
  return longest
end

p longest_chain(1000000)
