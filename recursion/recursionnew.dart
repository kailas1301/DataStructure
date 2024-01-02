void main() {
  print(sumOfNaturalNumbers(6));
  print(factorial(5));
  List<int> array = [1, 12, 2, 4, 18, 9];
  List<int> sortedarray = [1, 2, 3, 4, 5, 6, 8, 12];

  int index = array.length - 1;
  int largest = array[0];
  // print(sumofArray(array, index));
  // print(largestInArray(array, index, largest));
  print(fibonacci(5));
  int start = 0;
  int end = sortedarray.length - 1;
  int result = binarySearch(start, end, 2, sortedarray);
  if (result == -1) {
    print('the list is empty');
  } else {
    print(result);
  }
}

// int sumOfNaturalNumbers(int n) {
//   if (n == 0) {
//     return 0;
//   } else {
//     return n + sumOfNaturalNumbers(n - 1);
//   }
// }

// int factorial(int n) {
//   if (n == 0) {
//     return 1;
//   } else {
//     return n * factorial(n - 1);
//   }
// }

// int sumofArray(List<int> arr, int index) {
//   if (index < 0) {
//     return 0;
//   } else {
//     return arr[index] + sumofArray(arr, index - 1);
//   }
// }

// int largestInArray(List<int> arr, int index, int largest) {
//   if (index < 0) {
//     return largest;
//   } else if (arr[index] > largest) {
//     largest = arr[index];
//   }
//   return largestInArray(arr, index - 1, largest);
// }

// int fibonacci(int n) {
//   if (n <= 1) {
//     return n;
//   } else {
//     return fibonacci(n - 1) + fibonacci(n - 2);
//   }
// }

// int binarySearch(int start, int end, int target, List<int> array) {
//   if (start > end) {
//     return -1;
//   }
//   int m = (start + end) ~/ 2;
//   if (array[m] == target) {
//     return m;
//   } else if (array[m] < target) {
//     return binarySearch(m + 1, end, target, array);
//   } else {
//     return binarySearch(start, m - 1, target, array);
//   }
// }

// int binarySearch(int start, int end, int data, List<int> array) {
//   if (start > end) {
//     return -1;
//   }
//   int middle = (start + end) ~/ 2;

//   if (data == array[middle]) {
//     return middle;
//   } else if (data > array[middle]) {
//     return binarySearch(middle + 1, end, data, array);
//   } else {
//     return binarySearch(start, middle - 1, data, array);
//   }
// }

int binarySearch(int start, int end, int target, List<int> array) {
  if (start > end) {
    return -1;
  }
  int middle = (start + end) ~/ 2;
  if (array[middle] == target) {
    return middle;
  } else if (target > array[middle]) {
    return binarySearch(middle + 1, end, target, array);
  } else {
    return binarySearch(start, middle - 1, target, array);
  }
}

int sumOfNaturalNumbers(int n) {
  if (n == 0) {
    return 0;
  } else {
    return n + sumOfNaturalNumbers(n - 1);
  }
}

int factorial(n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
