// class Node {
//   int? data;
//   Node? next;

//   Node(int data) {
//     this.data = data;
//   }
// }

// class LinkedList {
//   Node? head;
//   Node? tail;

// // to add value to add Node in Linked List
//   void addNode(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail!.next = newNode;
//     }
//     tail = newNode;
//   }

// // to display the linked list
//   void display() {
//     if (head == null) {
//       print('linked list is null');
//     } else {
//       print('the list is :');
//       Node? temp = head;
//       while (temp != null) {
//         print(temp.data);
//         temp = temp.next;
//       }
//     }
//   }

//   // to delete a node from linked list

//   void delete(int data) {
//     Node? previous;
//     Node? temp;
//     temp = head;
//     if (temp == null) {
//       return;
//     }
//     if (head?.data == data) {
//       head = temp.next;
//       return;
//     }
//     while (temp != null && temp.data != data) {
//       previous = temp;
//       temp = temp.next;
//     }
//     if (tail?.data == data) {
//       tail = previous;
//       tail!.next = null;
//       return;
//     }
//     previous?.next = temp?.next;
//   }

//   void insertAfter(int nextTo, int data) {
//     Node newNode = new Node(data);
//     Node? temp;
//     temp = head;

//     while (temp != null && temp.data != nextTo) {
//       temp = temp.next;
//     }
//     if (temp == null) {
//       return;
//     }
//     if (temp == tail) {
//       tail?.next = newNode;
//       tail = newNode;
//       return;
//     }
//     newNode.next = temp.next;
//     temp.next = newNode;
//   }
// }

// void main() {
//   LinkedList addLinkedList = LinkedList();
//   addLinkedList.addNode(2);
//   addLinkedList.addNode(5);
//   addLinkedList.addNode(6);
//   addLinkedList.addNode(9);
//   addLinkedList.addNode(12);
//   addLinkedList.addNode(10);
//   // addLinkedList.display();
//   // addLinkedList.delete(2);
//   addLinkedList.display();
//   addLinkedList.insertAfter(9, 8);
//   addLinkedList.display();
// }

// class Node {
//   int? data;
//   Node? next;

//   Node(int data) {
//     this.data=data;
//   }
// }

// class linkedList {
//   Node? head;
//   Node? tail;

//   void addNodes(int data) {
//     Node newNode = new Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

//   void display() {
//     Node? temp = head;
//     if (head == null) {
//       print('list is empty');
//     } else {
//       print('the list is ');
//       while (temp != null) {
//         print(temp.data);
//         temp = temp.next;
//       }
//     }
//   }

//   void deleteNode(int data) {
//     Node? temp = head;
//     Node? previous;
//     if (head == null) {
//       return;
//     }
//     if (temp?.data == data) {
//       head = temp?.next;
//       return;
//     }
//     while (temp != null && temp.data != data) {
//       previous = temp;
//       temp = temp.next;
//     }
//     previous?.next = temp?.next;

//     if (tail?.data == data) {
//       tail = previous;
//       tail?.next = null;
//       return;
//     }
//   }
// }

// void main() {
//   linkedList newLinkedList =  linkedList();
//   newLinkedList.addNodes(1);
//   newLinkedList.addNodes(2);
//   newLinkedList.addNodes(3);
//   newLinkedList.addNodes(4);
//   newLinkedList.addNodes(5);
//   newLinkedList.addNodes(6);
//   newLinkedList.addNodes(7);
//   newLinkedList.addNodes(8);
//   newLinkedList.addNodes(9);
//   newLinkedList.display();
//   newLinkedList.deleteNode(1);
//   newLinkedList.deleteNode(5);
//   newLinkedList.deleteNode(9);
//   newLinkedList.display();
// }



class Node {
  int? data;
  Node? next;

  Node(int data) {
    this.data = data;
  }
}

class LinkedList {
  Node? head;
  Node? tail;
  void addNode(int data) {
    Node newNode = new Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void display() {
    Node? temp = head;
    if (temp == null) {
      print('the list is empty');
    }

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void deleteNode(int data) {
    Node? temp = head;
    Node? prev;
    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }
    if (temp == head) {
      head = temp?.next;
      return;
    }
    if (temp == tail) {
      tail = prev;
      tail?.next = null;
      return;
    }
    prev?.next = temp?.next;
  }

  void insert(int nextTo, int data) {
    Node newNode = new Node(data);
    Node? temp = head;
    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail?.next = newNode;
      tail = newNode;
      return;
    }
    newNode.next = temp.next;
    temp.next = newNode;
  }

  void insertBefore(int before, int data) {
    Node? temp = head;
    if (temp == null) {
      print('List is empty');
      return;
    }
    Node? newNode = Node(data);
    if (before == temp.data) {
      newNode.next = head;
      head = newNode;
      return;
    }

    while (temp!.next!.data != before) {
      temp = temp.next;
    }
    newNode.next = temp.next;
    temp.next = newNode;
  }

}

void main() {
  LinkedList newLinkedList = LinkedList();
  newLinkedList.addNode(1);
  newLinkedList.addNode(2);
  newLinkedList.addNode(3);
  newLinkedList.addNode(4);
  newLinkedList.addNode(5);
  newLinkedList.addNode(6);
  newLinkedList.addNode(7);
  newLinkedList.addNode(8);
  newLinkedList.addNode(9);
  newLinkedList.display();
  //  newLinkedList.display();
  // newLinkedList.deleteNode(1);
  // newLinkedList.deleteNode(5);
  // newLinkedList.deleteNode(9);
  // newLinkedList.display();
  //  newLinkedList.insert(6,0);
  newLinkedList.display();
  newLinkedList.insertBefore(9, 0);
  newLinkedList.display();
}
