import 'dart:io';

///507. Perfect Number
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
  print(_myOptimalAnswer(n));
}

bool _myOptimalAnswer(int n) {
  int sum = 0;
  for (var i = 1; i * i <= n; i++) {
    if (n % i == 0) {
      sum += i;
      if (i * i != n && i != 1) {
        sum += n ~/ i;
      }
    }
  }
  return sum == n;
}

bool _myAnswer(int n) {
  int sum = 0;
  for (var i = 1; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      sum += i;
    }
  }
  return sum == n;
}
