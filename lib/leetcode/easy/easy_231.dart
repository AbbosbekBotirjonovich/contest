import 'dart:io';

///231. Power of Two
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

bool _myAnswer(int n) {
  if(n <= 0) return false;
  if (n == 1) return true;
  while (n > 1) {
    if (n % 2 == 1) {
      return false;
    }
    n = n ~/ 2;
  }
  return true;
}
