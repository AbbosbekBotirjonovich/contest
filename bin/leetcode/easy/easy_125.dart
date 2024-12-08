import 'dart:io';

///125. Valid Palindrome
void main() {
  String s = stdin.readLineSync()!;
  print(_myAnswer(s));
}

bool _myAnswer(String s) {
  s = s.replaceAll(RegExp('[^A-Za-z0-9]'), '').toLowerCase().split(' ').join();
  StringBuffer newStr = StringBuffer('');
  for (var i = s.length - 1; i >= 0; i--) {
    newStr.write(s[i]);
  }
  return s == newStr.toString();
}
