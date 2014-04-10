pents = [1,5]
lowest = []

def next_pentagonal(n)
  n * (3 * n - 1) / 2
end

a = 1
while lowest.empty? # (pents[a] - pents[a-1]) > lowest[2]
  p a
  for b in (a-1).downto(0)
    sum = pents[a] + pents[b]
    pents << next_pentagonal(pents.length + 1) while sum > pents[-1]
    next unless pents.include?(sum)
    diff = pents[a] - pents[b]
    next if pents[b] < diff
    next unless pents.include?(diff)
    lowest = [pents[a],pents[b],diff]
  end
  a += 1
end

p lowest