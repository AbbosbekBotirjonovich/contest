import 'dart:io';

///292. Nim Game
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

bool _myAnswer(int n) {
  return n % 4 != 0;
}
