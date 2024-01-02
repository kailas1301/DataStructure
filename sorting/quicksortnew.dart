void quickSortHelper(List array, int first, int last) {
  // Base case: If the sublist has 0 or 1 elements, it is already sorted
  if (first >=last) {
    return;
  }

  // Choose the pivot index as the start of the sublist
  int pivotIndex = first;
  int start = first + 1;
  int end = last;

  // Partition the sublist around the pivot
  while (start <= end) {
    // Find elements greater than the pivot on the left and smaller on the right
    if (array[start] > array[pivotIndex] && array[end] < array[pivotIndex]) {
      // Swap the elements at start and end
      int temp = array[start];
      array[start] = array[end];
      array[end] = temp;
    }

    // Move the start pointer to the right if the element is less than or equal to the pivot
    if (array[start] <= array[pivotIndex]) {
      start++;
    }

    // Move the end pointer to the left if the element is greater than or equal to the pivot
    if (array[end] >= array[pivotIndex]) {
      end--;
    }
  }

  // Swap the pivot element with the element at the end pointer
  int temp = array[end];
  array[end] = array[pivotIndex];
  array[pivotIndex] = temp;

  // Recursively sort the two sublists
  quickSortHelper(array, first, end - 1);
  quickSortHelper(array, end + 1, last);
}

void main() {
  List list = [98, 5, 2, 45, 25, 1, 55];
  quickSortHelper(list, 0, list.length - 1);

  print("-----------------------------");
  print(list);
  print("-----------------------------");
}
