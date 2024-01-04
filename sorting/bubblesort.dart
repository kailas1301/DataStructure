void main() {
  List<int> nums = [58,3, 5,8, 1, 9, 21, 2, 9, 0,25,35,4];
  bubbleSort(nums);
  print(nums);
}

// to sort using bubble sort
void bubbleSort(List<int> array) {
  for (int i = 0; i < array.length - 1; i++) {
    for (int j = 0; j < array.length - i - 1; j++) {
      if (array[j + 1] < array[j]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
}



