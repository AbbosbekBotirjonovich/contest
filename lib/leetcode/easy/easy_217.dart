import 'dart:io';

///217. Contains Duplicate
void main() {
  List<int> items = stdin
      .readLineSync()!
      .split(' ')
      .map(
        (e) => int.parse(e),
      )
      .toList();
  print(_myAnswer(items));
}

bool _myAnswer(List<int> nums) {
  if (nums.length == 1) return false;
  nums.sort();
  for (var i = 1; i < nums.length; i++) {
    if (nums[i] == nums[i - 1]) {
      return true;
    }
  }
  return false;
}
