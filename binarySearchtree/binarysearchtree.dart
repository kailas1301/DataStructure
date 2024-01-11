void main() {
  BinarySearchTree newTree = BinarySearchTree();
  newTree.insert(10);
  newTree.insert(6);
  newTree.insert(12);
  newTree.insert(16);
  newTree.insert(1);
  newTree.insert(8);
  newTree.insert(2);
  newTree.insert(15);
  newTree.insert(19);
  newTree.insert(5);
  newTree.insert(25);
  newTree.insert(7);
  newTree.delete(15);
  newTree.delete(8);
  newTree.inOrder(newTree.root);
  print('---------');
  newTree.preOrder(newTree.root);
  print('----------');
  newTree.postOrder(newTree.root);
}

class Node {
  int? data;
  Node? left;
  Node? right;

  Node(int data) {
    this.data = data;
  }
}

class BinarySearchTree {
  Node? root;

  void insert(int data) {
    Node newNode = Node(data);

    if (root == null) {
      root = newNode;
    } else {
      Node? current = root;
      while (true) {
        if (data < current!.data!) {
          if (current.left == null) {
            current.left = newNode;
            return;
          }
          current = current.left;
        } else {
          if (current.right == null) {
            current.right = newNode;
            return;
          }
          current = current.right;
        }
      }
    }
  }

  void delete(int target) {
    deleteHelper(target, null, root);
  }

  void deleteHelper(int target, Node? parentNode, Node? currentNode) {
    while (currentNode != null) {
      if (target < currentNode.data!) {
        parentNode = currentNode;
        currentNode = currentNode.left;
      } else if (target > currentNode.data!) {
        parentNode = currentNode;
        currentNode = currentNode.right;
      } else {
        if (currentNode.left == null && currentNode.right == null) {
          if (parentNode == null) {
            root = null;
            return;
          } else if (parentNode.left == currentNode) {
            parentNode.left = null;
            return;
          } else if (parentNode.right == currentNode) {
            parentNode.right = null;
            return;
          }
        } else if (currentNode.right == null) {
          currentNode.data = findLargest(currentNode.left);
          deleteHelper(currentNode.data!, currentNode, currentNode.left);
        } else if (currentNode.left == null) {
          currentNode.data = findSmallest(currentNode.right);
          deleteHelper(currentNode.data!, currentNode, currentNode.right);
        }
      }
    }
    return;
  }

  int findLargest(Node? currentNode) {
    if (currentNode?.right == null) {
      return currentNode!.data!;
    } else {
      return findLargest(currentNode?.right);
    }
  }

  int findSmallest(Node? currentNode) {
    if (currentNode?.left == null) {
      return currentNode!.data!;
    } else {
      return findSmallest(currentNode?.left);
    }
  }

  void inOrder(Node? temp) {
    if (temp != null) {
      inOrder(temp.left);
      print(temp.data);
      inOrder(temp.right);
    }
  }

  void preOrder(Node? temp) {
    if (temp != null) {
      print(temp.data);
      preOrder(temp.left);
      preOrder(temp.right);
    }
  }

  void postOrder(Node? temp) {
    if (temp != null) {
      postOrder(temp.left);
      postOrder(temp.right);
      print(temp.data);
    }
  }
}
