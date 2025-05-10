import 'dart:io';

///367. Valid Perfect Square

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
  print(_optionalAnswer(n));
}

bool _optionalAnswer(int n) {
  int left = 1;
  int right = n;
  while (left <= right) {
    int mid = left + (right - left) ~/ 2;
    int square = mid * mid;
    if (square == n) {
      return true;
    } else if (square < n) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return false;
}

bool _myAnswer(int n) {
  for (var i = 0; i <= n ~/ 2 + 1; i++) {
    if (i * i == n) {
      return true;
    }
  }
  return false;
}
