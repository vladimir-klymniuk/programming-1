function factorial(num) {
    
    if (num < 2) {
        return 1;
    }
    
    return num * factorial(num - 1);
}

const res = factorial(5);
console.assert(120 === res, 'Factorial of 5, must be 120.');