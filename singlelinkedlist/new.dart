void findChar() {
  String vowels = 'aeiou';
  String char = 'FlutterProgramming';

  for (int i = 0; i < vowels.length - 1; i++) {
    if (char.contains(vowels[i])) {
      print("the vowel is present");
    }
  }
}


