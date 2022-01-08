# Stack Data Structure

```
A stack is a linear data structute that follows the principle of Last In First Out(LIFO). This means the last element inserted inside the stack is removed first.

You can think of the stack data structure as the pile of plates on top of another.
```

`LIFO Principle of Stack`

```
In programming terms, puttin an itme on top of the stack is called push and removing an
item is called pop.

LIFO (Last In First Out) Principle works.

There are some basic operations that allow us to perform different actions on a stack.
```

```
    - Push: Add an element to the top of a stack
    - Pop: Remove an element from the top of a stack
    - IsEmpty: Check if the stack is empty
    - IsFull: Check if the stack is full
    - Peek: Get the value of the top element without removing it
```

`Working of Stack Data Structure`

```
    The operations work as follows:

    1. A pointer called 'TOP' is used to keep track of the top element in the stack.

    2. When initializing the stack, we set its value to -1 so that we can check if the stack is epmty by comparing
    'TOP == -'.

    3. On pushing an element, we increase the value of 'TOP' and place the new element in the position pointed to by 'TOP'.

    4. On popping an element, we return the element pointed to by 'TOP'.

    5. Before pushing,we check if the stack is already full.

    6. Before popping, we check if the stack is already empty.


    example of work:
    empty stack     TOP = -1
    push            TOP = 0, stack[0] = 1
    push            TOP = 1, stack[1] = 2
    push            TOP = 2, stack[2] = 3
    pop             TOP = 1, return stack[2]
```

