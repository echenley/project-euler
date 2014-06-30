=begin

In England there are eight coins in general circulation:

1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p)

How many different ways can £2 (200p) be made using any number of coins?

=end 

COINS = [200,100,50,20,10,5,2,1]
combos = 0

def add_coin(type,subtotal)           # recursive loop from higher value coins to lower
  sub_combos = 0
  target = COINS[0]
  subtotal += COINS[type]             # adds current coin to subtotal
  return 1 if subtotal == target      # returns 1 to combos if 200 is reached
  for x in type...COINS.length        # otherwise adds another coin, and so on...
    sub_combos += add_coin(x,subtotal) if subtotal + COINS[x] <= target
  end
  sub_combos                          # returns accumulated sub_combos
end

for type in 0...COINS.length          # picks starting coin
  combos += add_coin(type,0)
  p [type,combos]
end
