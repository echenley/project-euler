/* Project Euler #52 - Combinatoric selections
 * 
 * How many, not necessarily distinct, values of  nCr,
 * for 1 ≤ n ≤ 100, are greater than one-million?
 */

var total = 0,
    f = [];
    
// Factorial function via http://stackoverflow.com/a/3959275

function factorial(n) {
    if (n === 0 || n === 1)
        return 1;
    if (f[n] > 0)
        return f[n];
    return f[n] = factorial(n-1) * n;
}

for (var n=1; n<=100; n++) {
    for (var r=1; r<=n; r++) {
        combos = factorial(n) / (factorial(r) * factorial(n-r));
        if (combos > 1000000) total++;
    }
}

console.log(total);
