
// Tree traversal in C++

#include <iostream>
using namespace std;

struct Node {
    int data;
    struct Node *left, *right;
    Node(int data) {
        this->data = data;
        left = right = NULL;
    }
};
