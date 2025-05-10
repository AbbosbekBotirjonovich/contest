import 'dart:io';

///242. Valid Anagram
void main() {
  String s = stdin.readLineSync()!;
  String t = stdin.readLineSync()!;
  print(_myAnswer(s, t));
}

bool _myAnswer(String s, String t) {
  if (s.length != t.length) return false;
  String sortedS = (s.split('')..sort()).join();
  String sortedT = (t.split('')..sort()).join();
  return sortedT == sortedS;
}
