import 'dart:io';

///258. Add Digits
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

int _myAnswer(int n) {
  if (n < 10) return n;
  int sum = 0;
  while (n > 0) {
    sum += n % 10;
    n ~/= 10;
  }
  return _myAnswer(sum);
}
