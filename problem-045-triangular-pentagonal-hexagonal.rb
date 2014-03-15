tris = [1,3]
pents = [1,5]
hexs = [1,6]
target = 0

def next_triangle(n)
  n * (n + 1) / 2
end

def next_pentagonal(n)
  n * (3 * n - 1) / 2
end

def next_hexagonal(n)
  n * (2 * n - 1)
end

loop do
  begin hexs << next_hexagonal(hexs.length + 1) end while hexs[-1] <= 40755
  target = hexs[-1]
  pents << next_pentagonal(pents.length + 1) while target > pents[-1]
  next unless pents[-1] == target
  tris << next_triangle(tris.length + 1) while target > tris[-1]
  pents[-1] == target ? break : next
end

p target
