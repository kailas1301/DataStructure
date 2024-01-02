
// find sum of n numbers
int sumOfNumbers(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n + sumOfNumbers(n - 1);
  }
}



// find the factorial of the number
int findFactorial(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n * findFactorial(n - 1);
  }
}



// find the power of a number;
int powerOfANumber(int x, int num) {
  if (x == 0) {
    return 1;
  } else {
    return num * powerOfANumber(x - 1, num);
  }
}



// to find the largest in array
int largestInArray(List<int> arr, int size, int largest) {
  if (size < 0) {
    return largest;
  } else {
    if (arr[size] > largest) {
      largest = arr[size];
    }
  }
  return largestInArray(arr, size - 1, largest);
}


void main() {
  print(sumOfNumbers(5));
  print(findFactorial(5));
  print(powerOfANumber(2, 3));
  List<int> arr = [1, 8, 2, 8, 5, 7];
  int largest = arr[0];
  int result = largestInArray(arr, arr.length - 1, largest);
  print(result);
}