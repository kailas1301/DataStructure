// import 'dart:ffi';
// import 'dart:math';

// import 'sorting/merge_sort.dart';

// void amain() {}

// // class Node {
// //   int? data;
// //   Node? next;
// //   Node(int data) {
// //     this.data = data;
// //   }
// // }

// // class Queue {
// //   Node? front;
// //   Node? rear;

// //   void enqueue(int data) {
// //     Node newNode = Node(data);
// //     if (front == null) {
// //       front = rear = newNode;
// //     } else {
// //       rear?.next = newNode;
// //       rear = newNode;
// //     }
// //   }

// //   void dequeue() {
// //     if (front == null) {
// //       print('no data found');
// //       return;
// //     } else {
// //       front = front?.next;
// //     }
// //   }

// //   void display() {
// //     Node? current = front;
// //     while (current != null) {
// //       print(current.data);
// //       current = current.next;
// //     }
// //   }
// // }

// // void quicksort(List<int> array, int first, int last) {
// //   if (first >= last) {
// //     return;
// //   }

// //   int start = first + 1;
// //   int pivot = first;
// //   int end = last;

// //   while (start <= end) {
// //     if (array[start] > array[pivot] && array[end] < array[pivot]) {
// //       int temp = array[start];
// //       array[start] = array[end];
// //       array[end] = temp;
// //     }
// //     if (array[start] <= array[pivot]) {
// //       start++;
// //     }
// //     if (array[end] > array[pivot]) {
// //       end--;
// //     }
// //   }
// //   int temp = array[pivot];
// //   array[pivot] = array[end];
// //   array[end] = temp;

// //   quicksort(array, first, end - 1);
// //   quicksort(array, end = 1, last);
// // }

// mergesort(List<int> array) {
//   if (array.length <= 1) {
//     return array;
//   }
//   int middle = array.length ~/ 2;
//   List<int> leftarray = array.sublist(0, middle);
//   List<int> rightarray = array.sublist(middle, array.length);

//   return merge(mergesort(leftarray), mergeSort(rightarray));
// }

// merge(List<int> leftarray, List<int> rightarray) {
//   List<int> sortedarray = [];

//   while (leftarray.isNotEmpty && rightarray.isNotEmpty) {
//     if (leftarray[0] <= rightarray[0]) {
//       sortedarray.add(leftarray.removeAt(0));
//     } else {
//       sortedarray.add(rightarray.removeAt(0));
//     }
//   }
//   return[...sortedarray,...leftarray,...rightarray]
// }
