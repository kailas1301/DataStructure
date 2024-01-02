String str = '     Hello Good Morning    ';
String newstring = '';
String fruits = 'apple,orange,banana,papaya';
String name = 'Kailas';
void main() {
  print(str.length);
  final result = str.isEmpty;
  print(result);
  print(newstring.isEmpty);
  print(str.toUpperCase());
  print(str.toLowerCase());
  print(str.startsWith('Hello'));
  print(str.endsWith('Morning'));
  print(str.indexOf('Good'));
  print(str.lastIndexOf('o'));
  print(str.trim());
  print(str.trimLeft());
  print(str.trimRight());
  print(fruits.split(','));
  print(str.replaceFirst('Hello', 'Hi'));
  print(str.replaceAll('o', 'z'));
  print(str.contains('ood'));
  print(str.contains('hi'));
  print(name.padLeft(7, '*'));
  print(name.padRight(9, '*'));
  print(name.codeUnitAt(0));
  print(name.codeUnitAt(1));
  final joined = str.trimRight() + name.padLeft(7,' ');
  print(joined);
}
