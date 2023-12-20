// to create a new node
class Node {
  int? data;
  Node? next, prev;

  Node(int data) {
    this.data = data;
  }
}

// Doubly Linked List class
class LinkedList {
  // create head and tail for the linkedlist
  Node? head, tail;
  void addNode(int data) {
    Node newNode = new Node(data);
    Node? temp = head;
    // if the list is empty
    if (temp == null) {
      head = newNode;
    }
    // if the list is not empty
    else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

// to display the list
  void display() {
    Node? temp = head;
    if (temp == null) {
      print('the list is empty');
    }
    print('the list is ');
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

// to display the list reversed
  void displayReversed() {
    Node? temp = tail;
    if (temp == null) {
      print('the list is empty');
    }
    print('the list is ');
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }

// to delete the nodes of the list
  void delete(int data) {
    Node? temp = head;
    Node? prev;
    Node? trailing;
    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
      trailing = temp?.next;
    }
    // if the list is empty
    if (temp == null) {
      return;
    }
    // if the value to be deleted is at the head
    if (temp == head) {
      head = temp.next;
      head?.prev = null;
      temp.next = null;
    }
    // if the value to be deleted is at the tail
    if (temp == tail) {
      tail = prev;
      tail?.next = null;
    }
    // if the value to be deleted is not from tail or head and its from the middle of the list;
    prev?.next = temp.next;
    trailing?.prev = temp.prev;
  }

  // to insert a new element in an array after a  element;
  void insert(int nextTo, int data) {
    Node? temp = head;
    Node newNode = new Node(data);
    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (tail == temp) {
      tail?.next = newNode;
      newNode.prev = tail;
      tail = newNode;
      return;
    }

    newNode.next = temp.next;
    temp.next = newNode;
    newNode.prev = temp;
  }

  // to insert a new element in an array before a  element;
  void insertBefore(int before, int data) {
    Node? temp = head;
    Node newNode = new Node(data);
    while (temp != null && temp.next?.data != before) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (temp == head) {
      temp.prev = newNode;
      newNode.next = temp;
      head = newNode;
      return;
    }

    newNode.next = temp.next;
    temp.next?.prev = newNode;
    newNode.prev = temp;
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
  newLinkedList.displayReversed();
  // newLinkedList.delete(1);
  // newLinkedList.delete(9);
  // newLinkedList.delete(5);
  // newLinkedList.display();
  // newLinkedList.insert(1, 0);
  // newLinkedList.insert(6, 0);
  // newLinkedList.insert(9, 0);i
  newLinkedList.insertBefore(7, 0);
  newLinkedList.display();
}
