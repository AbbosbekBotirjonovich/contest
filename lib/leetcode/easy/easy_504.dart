import 'dart:io';

///504. Base 7
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

String _myAnswer(int n) => n.toRadixString(7);
