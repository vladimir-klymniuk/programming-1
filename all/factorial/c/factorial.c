#include <stdio.h>

int factorial(int n) {
    if (n < 2) {
        return 1;
    }

    return n * factorial(n - 1);
}

int main() {

    int result;

    result = factorial(5);
    printf("Hello, Vovan. Factorial of 5 is %d \n", result);

    return 0;
}