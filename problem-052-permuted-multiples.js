/*
 * Project Euler #52 - https://projecteuler.net/problem=52
 *
 * It can be seen that the number, 125874, and its double, 251748,
 * contain exactly the same digits, but in a different order.
 * 
 * Find the smallest positive integer, x, such that
 * 2x, 3x, 4x, 5x, and 6x, contain the same digits.
*/

/* Array .equals via http://stackoverflow.com/questions/7837456/comparing-two-arrays-in-javascript
==================================== */

Array.prototype.equals = function (array) {
    // if the other array is a falsy value, return
    if (!array)
        return false;

    // compare lengths - can save a lot of time
    if (this.length != array.length)
        return false;

    for (var i = 0, l=this.length; i < l; i++) {
        // Check if we have nested arrays
        if (this[i] instanceof Array && array[i] instanceof Array) {
            // recurse into the nested arrays
            if (!this[i].equals(array[i]))
                return false;
        }           
        else if (this[i] != array[i]) { 
            // Warning - two different object instances will never be equal: {x:20} != {x:20}
            return false;   
        }
    }
    return true;
}


/* My stuff
============================ */

function digits(n) {
    return n.toString().split('').sort();
}

function numloop() {
    for (var n = 1;;n++) {
        for (var m = 2; m <= 7; m++) {
            if (m === 7) return n;
            if (!digits(n*m).equals(digits(n))) break;
        }
    }
}

console.log(numloop());
// => 142857
