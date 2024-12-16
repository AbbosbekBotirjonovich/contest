import 'dart:io';

///405. Convert a Number to Hexadecimal
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

String _myAnswer(int n) {
  if (n < 0) n &= 0xFFFFFFFF;
  return n.toRadixString(16);
}
