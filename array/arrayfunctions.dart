void main() {
  List<String> names = ['kailas', 'ganesh'];
  List<int> nums = [1, 0, 2, 9, 3, 4, 2, 5, 6, 2];

  print(names.length);
  names.add('kichu');
  print(names);
  print(names.reversed);
  print(names.contains('gopi'));
  print(names.isEmpty);
  names.addAll(['arjun', 'kevin', 'sanju']);
  print(names);
  names.insert(2, 'libin');
  print(names);
  names.insertAll(4, [
    'gopi',
    'bibin',
  ]);
  print(names);
  names.remove('kailas');
  names.removeAt(1);
  print(names);
  nums.removeWhere((element) => element % 2 != 0);
  print(nums);
  print(nums.indexOf(4));
  print(nums.lastIndexOf(2));
  nums.sort();
  print(nums);
  nums.forEach((num) => print(num * 2));
  List<int> newList = nums.map((e) => e * 10).toList();
  print(newList);
  int multiplicatedvalue = newList.reduce((value, element) => value * element);
  print(multiplicatedvalue);
  int sum = nums.reduce((value, element) => value + element);
  print(sum);
  print(names.join());
  print(nums.join());
  print(nums.firstWhere((element) => element % 2 == 0));
  print(nums.lastWhere((element) => element % 2 == 0));
  print(names.first);
  print(names.last);
  List<int> sublist = nums.sublist(2, 6);
  print(sublist);
  print(nums.getRange(0, 3));
  nums.replaceRange(1, 3, [0, 10]);
  print(nums);
  nums.shuffle();
  print(nums);
}
