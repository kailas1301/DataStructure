class BinarySearch {
  int findTarget(int target, List<int> nums) {
    int startIndex = 0;
    int endIndex = nums.length - 1;
    while (startIndex <= endIndex) {
 int middleIndex = startIndex + ((endIndex - startIndex) / 2).toInt();
      if (nums[middleIndex] == target) {
        return middleIndex;
      } else if (target >nums [middleIndex]) {
        startIndex = middleIndex + 1;
      } else if (target <nums[ middleIndex]) {
        endIndex = middleIndex - 1;
      }
    }
    return -1;
  }
}

void main() {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7];
  BinarySearch newSearch = new BinarySearch();
  final result = newSearch.findTarget(6, nums);
  print(result);
}
