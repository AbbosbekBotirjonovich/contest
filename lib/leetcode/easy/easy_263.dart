import 'dart:io';

///263. Ugly Number
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

bool _myAnswer(int n) {
  if (n <= 0) return false;
  if (n == 1) return true;
  while (n > 1) {
    if (n % 2 == 0) {
      n = n ~/ 2;
    } else if (n % 3 == 0) {
      n = n ~/ 3;
    } else if (n % 5 == 0) {
      n = n ~/ 5;
    } else {
      return false;
    }
  }
  return true;
}
