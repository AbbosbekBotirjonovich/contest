import 'dart:io';

///392. Is Subsequence
void main() {
  String s = stdin.readLineSync()!;
  String t = stdin.readLineSync()!;
  print(_myAnswer(s, t));
}

bool _myAnswer(String s, String t) {
  if (s.isEmpty && t.isEmpty) return true;
  for (var i = 0; i < t.length; i++) {
    if (s.isEmpty) return true;
    if (s[0] == t[i]) {
      s = s.replaceFirst(s[0], '');
    }
  }
  return s.isEmpty;
}
