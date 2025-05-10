import 'dart:io';

void main(List<String> args) {
  int t = int.parse(stdin.readLineSync()!);
  List<List<int>> items = [];
  for (var i = 0; i < t; i++) {
    items.add(
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e)).toList(),
    );
  }
  String answer = '';
  for (var item in items) {
    if (_checkSum(item[0], item[1])) {
      answer += "1";
    } else {
      answer += "0";
    }
  }
  print(answer);
}

bool _checkSum(int n, int m) {
  int sum = (1 + n) * n ~/ 2;

  return sum == m;
}
