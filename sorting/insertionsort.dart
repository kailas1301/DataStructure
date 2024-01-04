void main() {
  List<int> nums = [2,8, 7,8, 6, 1, 15, 4, 1, 9, 3];
  var result = insertionSort(nums);
  print(result);
}

//to sort using insertion sort. 
List<int> insertionSort(List<int> array) {
  for (int i = 1; i < array.length; i++) {
    int current = array[i]; 
    int j = i - 1;
    while (j >= 0 && array[j] >= current) {
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = current;
  }

  return array;
}
