import 'dart:io';

///509. Fibonacci Number
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

int _myAnswer(int n) {
  if (n == 0) return 0;
  if (n == 1) return 1;
  return _myAnswer(n - 1) + _myAnswer(n -2);
}

