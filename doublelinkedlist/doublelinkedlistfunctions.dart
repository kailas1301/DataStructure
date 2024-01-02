void main() {
  DoubleLinkedList newDll = new DoubleLinkedList();
  newDll.addNode(1);
  newDll.addNode(2);
  newDll.addNode(3);
  newDll.addNode(4);
  newDll.display();
  print('----------');
  newDll.displayReversed();
  print('----------');
  newDll.replaceNthElement(data: 99, n: 1);
  newDll.display();
}

class Node {
  int? data;
  Node? prev;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class DoubleLinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = new Node(data);
    Node? current = head;

    while (current != null) {
      current = current.next;
    }
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void displayReversed() {
    Node? current = tail;
    while (current != null) {
      print(current.data);
      current = current.prev;
    }
  }

// to delete a number
  void delete(int data) {
    Node? current = head;
    Node? prev;

    while (current != null && current.data != data) {
      prev = current;
      current = current.next;
    }

    if (current == null) {
      return;
    } else if (current == head) {
      current.next?.prev = null;
      head = current.next;
      current.next = null;
    } else if (current == tail) {
      tail = prev;
      prev?.next = null;
    }

    prev?.next = current.next;
    current.next?.prev = current.prev;
  }

  // To insert a new element after
  void insertAfterElement(int data, int target) {
    Node? current = head;
    Node newNode = new Node(data);
    while (current != null && current.data != target) {
      current = current.next;
    }
    if (current == tail) {
      current?.next = newNode;
      newNode.prev = current;
      tail = newNode;
      return;
    }
    newNode.prev = current;
    newNode.next = current?.next;
    current?.next = newNode;
    current?.next?.prev = newNode;
  }

  // to insert a element before the target

  void insertBefore(int data, int target) {
    Node? current = head;
    Node? previous;
    Node newNode = new Node(data);
    while (current != null && current.data != target) {
      previous = current;
      current = current.next;
    }
    if (current == null) {
      return;
    }
    if (current == head) {
      newNode.next = current;
      current.prev = newNode;
      head = newNode;
      return;
    }
    newNode.prev = previous;
    newNode.next = previous?.next;
    previous?.next = newNode;
    current.prev = newNode;
  }

  // replace the nth element

  void replaceNthElement({required int data, required int n}) {
    Node? current = head;
    int count = 0;
    Node newNode = new Node(data);
    while (current != null && count != n) {
      count++;
      current = current.next;
    }

    if (current == null) {
      return;
    } else if (current == head) {
      newNode.next = current.next;
      current.next?.prev = newNode;
      head = newNode;
      return;
    } else if (current == tail) {
      newNode.prev = current.prev;
      current.prev?.next = newNode;
      tail = newNode;
      return;
    }

    newNode.prev = current.prev;
    current.prev?.next = newNode;
    current.next?.prev = newNode;
    newNode.next = current.next;
  }
}
