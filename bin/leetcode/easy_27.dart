import 'dart:io';

/// 27. Remove Element
void main() {
  List<int> items =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  int value = int.parse(stdin.readLineSync()!);
  print(_myAnswer(items, value));
  print(_optimalAnswer(items, value));
}

int _optimalAnswer(List<int> nums, int val) {
  nums.removeWhere((e) => e == val);
  return nums.length;
}

int _myAnswer(List<int> nums, int val) {
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] == val) {
      nums.removeAt(i);
      i -= 1;
    }
  }
  return nums.length;
}
