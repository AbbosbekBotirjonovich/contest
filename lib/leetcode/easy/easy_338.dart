import 'dart:io';

///338. Counting Bits
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

List<int> _myAnswer(int n) {
   List<int> result = List.filled(n + 1, 0);

  for (int i = 1; i <= n; i++) {
    result[i] = result[i >> 1] + (i & 1);
  }

  return result;
}
