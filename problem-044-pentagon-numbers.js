'use strict';

let pentagonNums = [];

var memoize = function(func) {
    var stringifyJson = JSON.stringify,
        cache = {};

    var cachedfun = function() {
        var hash = stringifyJson(arguments);
        return (hash in cache) ? cache[hash] : cache[hash] = func.apply(this, arguments);
    };

    cachedfun.__cache = (function() {
        cache.remove || (cache.remove = function() {
            var hash = stringifyJson(arguments);
            return (delete cache[hash]);
        });
        return cache;
    }).call(this);

    return cachedfun;
};

function compose(func1, func2) {
    return function() {
        return func1(func2.apply(null, arguments));
    };
}

let pentagonalFormula = memoize(function(n) {
    return n * (3 * n - 1) / 2;
});

function addPentagonNum(n) {
    return (pentagonNums[n] = pentagonalFormula(n));
}

let isPentagonal = memoize(function(n) {
    let largestPentagonNum = pentagonNums[pentagonNums.length-1];
    while (largestPentagonNum < n) {
        largestPentagonNum = addPentagonNum(pentagonNums.length);
    }
    return pentagonNums.indexOf(n) !== -1;
});

function sum(a, b) { return a + b; }
function difference(a, b) { return Math.abs(a - b); }

let sumIsPentagonal = compose(isPentagonal, sum);
let differenceIsPentagonal = compose(isPentagonal, difference);

function satisfiesProblem44(a, b) {
    return differenceIsPentagonal(a, b) && sumIsPentagonal(a, b);
}

function checkPairsFrom(i) {
    let pent1 = pentagonNums[i] || addPentagonNum(i);
    while (--i) {
        let pent2 = pentagonNums[i];
        if (satisfiesProblem44(pent1, pent2)) {
            return [pent1, pent2];
        }
    }
    return [];
}

function problem44() {
    let pair = [];
    let i = 1;
    while (pair.length === 0) {
        pair = checkPairsFrom(i++);
    }
    return pair;
}

let answer = problem44();

console.log(answer);
// => [7042750, 1560090]