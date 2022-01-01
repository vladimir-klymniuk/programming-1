// Stack implementation nodejs Version 1 (functional way)

// // Create stack
// var createStack = function() {
//     const stack = [];
//     return stack;
// }

// // Creating an empty stack
// var checkEmpty = function(stack) {
//     return stack.lenth == 0;
// }

// // Adding items into the stack
// var push = function(stack, item) {
//     stack.push(item);
//     console.log("pushed item:" + item)
// }

// // Removing an element from the stack
// var pop = function(stack) {
//     if (checkEmpty(stack)) {
//         return "stack is empty"
//     }

//     return stack[stack.length -1];
// }

// var stack = createStack();
// push(stack, new String('one'));
// push(stack, new String('two'));
// push(stack, new String('three'));
// push(stack, new String('four'));

// let popped = pop(stack);

// console.log(popped);

// Stack implementation nodejs Version 2 (like object )
const StdStack = {
    // __constructor() {
    //     return [];
    // },
    createStack: () => [],
    checkEmpty: (stack) =>  stack.lenth == 0,
    push: function(stack, item) {
        stack.push(item);
        console.log("pushed item:" + item);
    },
    pop: function(stack) {
        if ( true === this.checkEmpty(stack)) {
            return "stack is empty";
        }

        return stack[stack.length -1];
    }
  };

const stack1    = StdStack.createStack();
const strOne    = new String('one');
const strTwo    = new String('two');
const id        =  Symbol.for("12323");

console.log(id);
// let clone = Object.assign({}, user);
// StdStack.push(new String('one'))
// StdStack.push(stack1, new String('one'))
// StdStack.push(stack1, new String('one'))
// StdStack.push(stack1, new String('one'))
// StdStack.push(stack1, new Symbol('id'))
// console.info(stack1);
// StdStack.push(new String('one'))
// console.log();
// StdStack.push(new String('one'))
// console.log();

// Stack implementation nodejs Version 3 (like function )

// var stack = function (){};
