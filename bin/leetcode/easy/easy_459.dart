import 'dart:io';

void main() {
  String s = stdin.readLineSync()!;
  print(_myAnswer(s));
  print(_optimalAnswer(s));
  print(_answer(s));
}

bool _optimalAnswer(String s) {
  return (s + s).substring(1, s.length * 2 - 1).contains(s);
}

bool _answer(String s) {
  int n = s.length;
  for (var i = n ~/ 2; i >= 1; i--) {
    if (n % i == 0) {
      String newS = s.substring(0, i);
      bool repeat = newS * (n ~/ i) == s;
      if (repeat) return true;
    }
  }
  return false;
}

//my code time limit
bool _myAnswer(String s) {
  if (s.length == 1) return false;
  for (var i = s.length - 1; i > s.length ~/ 2 - 1; i--) {
    String news = s.replaceAll(s.substring(i, s.length), '');
    if (news.isEmpty) return true;
  }
  return false;
}
