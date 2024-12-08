import 'dart:io';

///326. Power of Three
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

bool _myAnswer(int n) {
  if (n <= 0) return false;
  while (n > 1) {
    if (n % 3 != 0) {
      return false;
    }
    n = n ~/ 3;
  }
  return true;
}
