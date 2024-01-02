void main() {
  List<int> nums = [58,3, 5,8, 1, 9, 21, 2, 9, 0,25,35,4];
  var result = selectionSort(nums);
  print(result);
}

// to sort using bubble sort
List<int> bubbleSort(List<int> array) {
  for (int i = 0; i < array.length - 1; i++) {
    for (int j = 0; j < array.length - i - 1; j++) {
      if (array[j + 1] < array[j]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return array;
}


// to sort using 
List<int> selectionSort(List<int> array) {
  for (int i = 0; i < array.length - 1; i++) {
    for (int j = i+1; j < array.length; j++) {
      if (array[j] < array[i]) {
        int temp = array[i];
        array[i] = array[j];
        array[j] = temp;
      }
    }
  }
  return array;
}
