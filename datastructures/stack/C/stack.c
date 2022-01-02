// Stack implementation in C

#include <stdio.h>
#include <stdlib.h>

#define MAX 2

int count = 0;

// Creating a stack
struct Stack {
    int items[MAX];
    int top;
};
typedef struct Stack stackv;

void createEmptyStack(stackv *st) {
    st->top = -1;
}

// Check if the stack is full
int isfull(stackv *st) {
    if (st->top == MAX - 1)
        return 1;
    else 
        return 0;
}

// Check if the stack is empty
int isempty(stackv *st) {
    if (st->top == -1)
        return 1;
    else
        return 0;
}

// Add elements into stack
void push(stackv *st, int newitem) {
    if (isfull(st)) {
        printf("STACK FULL");
    } else {
        st->top++;
        st->items[st->top] = newitem;
    }
    count++;
}

// Remove element from stack
void pop(stackv *st) {
    if (isempty(st)) {
        printf("\n STACK EMPTY \n");
    } else {
        printf("Item popped= %d", st->items[st->top]);
        st->top--;
    }
    count--;
    printf("\n");
}

void printStack(stackv *st) {
    printf("Stack: ");
    for (int i = 0; i < count; i++) {
        printf("%d ", st->items[i]);
    }
    printf("\n");
}

// Launch code
int main() {
    // int ch;
    stackv *st = (stackv *)malloc(sizeof(st));

    createEmptyStack(st);

    push(st, 1);
    push(st, 11);
    push(st, 111);
    push(st, 1111);

    printStack(st);

    pop(st);

    printf("\nAfter popping out\n");
    printStack(st);
}