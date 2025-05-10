import 'dart:io';

/// 70. Climbing Stairs
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

Map<int, int> cache = {};

// time limit for 37
int _myAnswer(int n) {
  /*
  1(1) => 1
  2(2) => 1,1 -> 2,
  3(3) => 1,1,1 -> 2,1 -> 1,2.
  4(5) => 1,1,1,1 -> 1,1,2 -> 1,2,1 -> 2,1,1 -> 2,2
  5(8) => 1,1,1,1,1 -> 1,1,1,2 -> 1,1,2,1 -> 1,2,1,1 -> 2,1,1,1 -> 2,2,1 -> 1,2,2 -> 2,1,2
  6(13) => 1,1,1,1,1,1 -> 1,1,1,1,2 -> 1,1,1,2,1 -> 1,1,2,1,1 -> 1,2,1,1,1 -> ....
  */
  if (n == 1) return 1;
  if (n == 2) return 2;
  if (cache[n] == null) {
    cache[n] = _myAnswer(n - 1) + _myAnswer(n - 2);
  }
  return cache[n]!;
}
