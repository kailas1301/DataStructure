void main() {
  List<int> nums = [];
  int result = binarysearch(7, nums);
  print(result);
}

int binarysearch(int data, List<int> nums) {
  int start = 0;
  int end = nums.length - 1;

  while (start <= end) {
    int middle = (start + end) ~/ 2;
    if (nums[middle] == data) {
      return middle;
    } else if (data < nums[middle]) {
      end = middle - 1;
    } else {
      start = middle + 1;
    }
  }
  return -1;
}
