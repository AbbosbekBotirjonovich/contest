import 'dart:io';

///345. Reverse Vowels of a String
void main() {
  String s = stdin.readLineSync()!;
  print(_myAnswer(s));
}

String _myAnswer(String s) {
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  List<String> items = s.split('')
    ..removeWhere(
      (e) => !vowels.contains(
        e.toLowerCase(),
      ),
    );
  items = items.reversed.toList();
  List<String> newS = s.split('');
  for (var i = 0; i < newS.length; i++) {
    if (vowels.contains(s[i].toLowerCase())) {
      newS[i] = items[0];
      items.removeAt(0);
    }
  }
  return newS.join();
}
