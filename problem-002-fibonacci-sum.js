// # By considering the terms in the Fibonacci
// # sequence whose values do not exceed four million,
// # find the sum of the even-valued terms.

// memoized function a la Crockford's JS, the Good Parts
// absurdly fast compared to other attempts

var fibonacci = (function() {
    var memo = [1,2];
    var fib = function(n) {
        var result = memo[n];
        if (typeof result !== 'number') {
            result = fib(n-1) + fib(n-2);
            memo[n] = result;
        }
        return result;
    };
    return fib;
}());

var current = 1,
    total = 0,
    j = 1;

while (current < 4e6) {
    total += current;
    j += 3;
    current = fibonacci(j);
}

console.log(total);
