class Stack {
  List<int> items = [];

  void push(int item) {
    items.add(item);
  }

  int pop() {
    if (isEmpty()) {
      throw StateError('Stack is empty');
    }
    return items.removeLast();
  }

  bool isEmpty() {
    return items.isEmpty;
  }

  int size() {
    return items.length;
  }

  void deleteMiddle() {
    if (isEmpty()) {
      throw StateError('Stack is empty');
    }

    int middleIndex = size() ~/ 2; // Find the middle index (integer division)
    items.removeAt(middleIndex);
  }
}

void main() {
  Stack myStack = Stack();

  // Push some elements onto the stack
  myStack.push(1);
  myStack.push(2);
  myStack.push(3);
  myStack.push(4);
  myStack.push(5);

  // Print the original stack
  print('Original Stack: ${myStack.items}');

  // Find the middle of the stack and delete it
  myStack.deleteMiddle();

  // Print the stack after deleting the middle element
  print('Stack after deleting the middle element: ${myStack.items}');
}
