import 'dart:io';

///202. Happy Number
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

bool _myAnswer(int n) {
  if (n == 1) {
    return true;
  } else if (n == 4) {
    return false;
  }

  int sum = 0;
  while (n > 0) {
    int digit = n % 10;
    sum += digit * digit;
    n ~/= 10;
  }

  return _myAnswer(sum);
}
