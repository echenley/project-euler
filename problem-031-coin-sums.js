/*

In England there are eight coins in general circulation:

1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p)

How many different ways can £2 (200p) be made using any number of coins?

*/

var coins = [200,100,50,20,10,5,2,1],  
    target = 200,
    combos = 0;

function add_coin(coin,subtotal) {
    subtotal += coins[coin];
    if (subtotal > target) return;
    if (subtotal === target) {
        combos += 1;
        return;
    }
    for (var c = coin; c < coins.length; c++) {
        add_coin(c,subtotal);
    }
}

for (var c = 0; c < coins.length; c++) {  
    add_coin(c,0);
}

console.log(combos);
