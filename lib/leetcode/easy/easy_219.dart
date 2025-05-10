import 'dart:io';

///219. Contains Duplicate II
void main() {
  List<int> items = stdin
      .readLineSync()!
      .split(' ')
      .map(
        (e) => int.parse(e),
      )
      .toList();
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(items, n));
}

bool _myAnswer(List<int> nums, int k) {
  for (var i = 0; i < nums.length; i++) {
    for (var j = i + 1; j < nums.length && j <= i + k; j++) {
      if (nums[i] == nums[j]) {
        return true;
      }
    }
  }
  return false;
}
