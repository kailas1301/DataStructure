

class BinarySearch {
  int findTarget(int target, List<int> nums) {
    int startIndex = 0;
    int endIndex = nums.length - 1;
    while (startIndex <= endIndex) {
      int middleIndex = (startIndex + endIndex) ~/ 2;
      if (nums[middleIndex] == target) {
        return middleIndex;
      } else if (target > nums[middleIndex]) {
        startIndex = middleIndex + 1;
      } else {
        endIndex = middleIndex - 1;
      }
    }
    return -1;
  }

  int findTargetnew(int start, int end, int target, List nums) {
    if (start > end) {
      return -1;
    }

    int middle = (start + end) ~/ 2;

    if (nums[middle] == target) {
      return middle;
    } else if (nums[middle] < target) {
      return findTargetnew(
          middle + 1, end, target, nums); // Corrected condition
    } else {
      return findTargetnew(
          start, middle - 1, target, nums); // Corrected condition
    }
  }
}

void main() {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7];
  BinarySearch newSearch = BinarySearch();
  final result = newSearch.findTarget(6, nums);
  print(result);

  List<int> numslist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int target = 7;

  int resultoflists =
      newSearch.findTargetnew(0, numslist.length - 1, target, numslist);

  if (resultoflists != -1) {
    print("Element found at index $resultoflists");
  } else {
    print("Element not found");
  }
  print(binarySearchInList(4, nums));
}

int binarySearchInList(int target, List<int> array) {
  int start = 0;
  int end = array.length - 1;

  while (start < end) {
    int m = (start + end) ~/ 2;
    if (target == array[m]) {
      return m;
    } else if (target > array[m]) {
      start = m + 1;
    } else {
      end = m - 1;
    }
  }
  return -1;
}



