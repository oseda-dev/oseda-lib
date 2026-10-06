


// callbackFn is an argument (first class function)
function repeatFn(callbackFn) {
    callbackFn();
    callbackFn();
}

repeatFn(() => {
    console.log("Hello world!")
});


function createMultiplier(factor) {
    
    // number is a parameter, not a value    
    return function(number) {
        return number * factor;
    };
}

const double = createMultiplier(2);
const triple = createMultiplier(3);

console.log(double(5));
console.log(triple(5));


function map(list, fn){
    for (let i = 0; i < list.length; i++) {
        // transform the ith elem
        const newValue = fn(list[i])
        list[i] = newValue
    }
    return list;
}

const list = [1, 2, 3, 4, 5]
const updatedList = map(list, (i) => {
    return i + 1;
});

console.log(updatedList)
