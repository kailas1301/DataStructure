// void main() {
//   var nums = [4, 9, 2, 6, 3, 12, 8, 1, 17, 30];
//   quicksort(nums, 0, nums.length - 1);
//   print(nums);
// }

// void quicksort(List<int> array, int start, int end) {
//   if (start < end) {
//     int pivotindex = partition(array, start, end);
//     quicksort(array, start, pivotindex - 1);
//     quicksort(array, pivotindex + 1, end);
//   }
// }

// int partition(List<int> array, int low, int high) {
//   int start = low + 1;
//   int end = high;
//   int pivot = array[low];

//   while (start <= end) {
//     while (start <= end && array[start] <= pivot) {
//       start++;
//     }
//     while (start <= end && array[end] > pivot) {
//       end--;
//     }

//     if (start < end) {
//       //Swap array[start] and array[end]
//       int temp = array[start];
//       array[start] = array[end];
//       array[end] = temp;
//     }
//   }

//   //Swap array[low] and array[end]
//   int temp = array[low];
//   array[low] = array[end];
//   array[end] = temp;

//   return end;
// }



void main() {
var list = [12, 8, 9, 5, 4, 1, 23, 7];
quicksort(list, 0, list.length - 1);
print(list);
}

void quicksort(List array, int first, int last) {
  if (first >= last) {
    return;
  }

  int start = first + 1;
  int end = last;
  int pivotIndex = first;

  while (start <= end) {
    if (array[start] > array[pivotIndex] && array[end] < array[pivotIndex]) {
      int temp = array[start];
      array[start] = array[end];
      array[end] = temp;
    }
    if (array[start] <= array[pivotIndex]) {
      start++;
    }
    if (array[end] > array[pivotIndex]) {
      end--;
    }
  }

  int temp = array[end];
  array[end] = array[pivotIndex];
  array[pivotIndex] = temp;

  quicksort(array, first, end - 1);
  quicksort(array, end + 1, last);
}
