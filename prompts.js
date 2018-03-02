// #### Unique Items ####
// # Write a function that takes in an array. It should return a new array
// # containing only the elements that were unique in the original array.
// #
// # For example:
// # ary = [1, 5, 5, 7, 16, 8, 1, 8]
// # unique = unique_items(ary)
// # unique # => [7, 16]

function count_num(arr, n) {
    var count = 0;
    var i = 0;
    while (i<arr.length) {
        if (arr[i] === n) {
            count++;
        }
        i++;
    }
    
    return count;
}

function unique_items(arr) {
    var result = [];
    
    var i = 0;
    while (i < arr.length) { 
        if (!result.includes(arr[i]) && count_num(arr, arr[i]) === 1) {
            result.push(arr[i]);
        }    
    
        i++;   
    }
    
    return result;
}

let ary = [1, 5, 5, 7, 16, 8, 1, 8];
let unique = unique_items(ary)
console.log(unique)