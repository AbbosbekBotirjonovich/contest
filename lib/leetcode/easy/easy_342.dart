import 'dart:io';

///342. Power of Four
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

bool _myAnswer(int n) {
  if (n <= 0) return false;
  while (n > 1) {
    if (n % 4 != 0) {
      return false;
    }
    n ~/= 4;
  }
  return true;
}
