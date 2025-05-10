import 'dart:io';

///492. Construct the Rectangle
void main() {
  int area = int.parse(stdin.readLineSync()!);
  print(_myAnswer(area));
  print(_optimalAnswer(area));
}

List<int> _optimalAnswer(int area) {
  int l = area;
  int w = 1;
  for (var i = 2; i * i <= area; i++) {
    if (area % i == 0) {
      w = i;
      l = area ~/ w;
    }
  }
  return [l, w];
}

List<int> _myAnswer(int area) {
  if (_isTub(area)) {
    return [area, 1];
  }
  var nums = <int>[];
  for (var i = 2; i * i <= area; i++) {
    if (area % i == 0) {
      nums = [];
      if (area ~/ i > i) {
        nums.addAll([area ~/ i, i]);
      } else {
        nums.addAll([i, area ~/ i]);
      }
    }
  }
  return nums;
}

bool _isTub(int n) {
  for (var i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
