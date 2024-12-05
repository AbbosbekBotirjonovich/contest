import 'dart:io';

///69. Sqrt(x)
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

int _myAnswer(int x) {
  int n = 1;
  while (n * n < x) {
    n += 1;
  }
  n = n * n > x ? n - 1 : n;
  return n;
}
