import 'dart:io';

///500. Keyboard Row

void main() {
  List<String> words = stdin.readLineSync()!.split(',');
  print(_myAnswer(words));
}

List<String> _myAnswer(List<String> words) {
  List<String> output = [];
  String first = "qwertyuiop";
  String second = "asdfghjkl";
  String third = "zxcvbnm";
  for (String word in words) {
    String lower = word.toLowerCase();
    if (lower.split('').every((char) => first.contains(char)) ||
        lower.split('').every((char) => second.contains(char)) ||
        lower.split('').every((char) => third.contains(char))) {
      output.add(word);
    }
  }
  return output;
}
