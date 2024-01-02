void main() {
  SingleLinkedList newSingleLinkedList = new SingleLinkedList();
  newSingleLinkedList.addNode(10);
  newSingleLinkedList.addNode(4);
  newSingleLinkedList.addNode(1);
  newSingleLinkedList.addNode(9);
  newSingleLinkedList.addNode(2);
  newSingleLinkedList.display();
  // newSingleLinkedList.delete(1);
  // newSingleLinkedList.delete(10);
  // newSingleLinkedList.delete(2);
  // newSingleLinkedList.replace(99, 1);
  // newSingleLinkedList.insertNthElement(2, 99);
  // newSingleLinkedList.insertAfter(2, 99);
  newSingleLinkedList.insertBefore(9, 99);
  print('----------------');
  newSingleLinkedList.display();
}

class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class SingleLinkedList {
  Node? head;
  Node? tail;
  void addNode(int data) {
    Node newNode = new Node(data);
    Node? current = head;
    if (current == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

// to display the list of singlelinked lists
  void display() {
    Node? current = head;
    if (current == null) {
      print('The list is null');
      return;
    }
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  // void displayReversed() {
  //   Node? current = tail;
  //   if (tail == null) {
  //     print('list is empty');
  //     return;
  //   } else {
  //     print(current?.data);
  //   }
  // }

// to delete a
  void delete(int data) {
    Node? current = head;
    Node? previous;
    while (current != null && current.data != data) {
      previous = current;
      current = current.next;
    }
    if (current == null) {
      return;
    } else if (current == head) {
      head = current.next;
      return;
    } else if (current == tail) {
      tail = previous;
      previous?.next = null;
      return;
    }
    previous?.next = current.next;
  }

  // to replace a number from linked list

  void replace(int data, int target) {
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
      newNode.next = current.next;
      head = newNode;
      current.next = null;
      return;
    } else if (current == tail) {
      previous?.next = newNode;
      tail = newNode;
      return;
    }
    previous?.next = newNode;
    newNode.next = current.next;
    current.next = null;
  }

  // insert in  nth element of the linked list

  void insertNthElement(int n, int data) {
    Node? current = head;
    Node? previous;
    Node newNode = new Node(data);
    int count = 0;
    while (current != null && count != n) {
      count++;
      previous = current;
      current = current.next;
    }
    if (current == null) {
      return;
    } else if (current == head) {
      newNode.next = current.next;
      head = newNode;
      current.next = null;
      return;
    } else if (current == tail) {
      previous?.next = newNode;
      tail = newNode;
      return;
    }
    newNode.next = current.next;
    previous?.next = newNode;
    current.next = null;
  }

  // to inser a element after
  void insertAfter(int target, int data) {
    Node? current = head;
    Node newNode = Node(data);
    while (current != null && current.data != target) {
      current = current.next;
    }
    if (current == null) {
      return;
    } else if (current == tail) {
      tail?.next = newNode;
      tail = newNode;
      return;
    }
    newNode.next = current.next;
    current.next = newNode;
  }

  // to insert a element before in linked list
  void insertBefore(int target, int data) {
    Node? current = head;
    Node newNode = new Node(data);
    Node? previous;
    while (current != null && current.data != target) {
      previous = current;
      current = current.next;
    }
    if (current == null) {
      return;
    } else if (current == head) {
      newNode.next = current;
      head = newNode;
      return;
    }
    newNode.next = previous?.next;
    previous?.next = newNode;
  }

// Reversing the elements of the list
 void displayreverse() {
    Node? prev;
    Node? current = head;
    while (current != null) {
      Node? next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head=prev;
    }
}
