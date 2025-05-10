import 'dart:io';

///551. Student Attendance Record I
void main() {
  String s = stdin.readLineSync()!;
  print(_myAnswer(s));
}

bool _myAnswer(String s) {
  int a = 0;
  for (var i = 0; i < s.length; i++) {
    if (s[i] == 'A') a += 1;
    if (i > 0 && i < s.length - 1 && s[i] == 'L') {
      if (s[i - 1] == 'L' && s[i] == 'L' && s[i + 1] == 'L') {
        return false;
      }
    }
  }
  return a < 2;
}
