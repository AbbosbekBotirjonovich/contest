import 'dart:io';

///268. Missing Number
void main() {
  List<int> nums =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  print(_myAnswer(nums));
  print(_optimalAnswer(nums));
}

int _optimalAnswer(List<int> nums) {
  int n = 0;
  nums.sort();
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] == i) {
      n += 1;
    }
  }
  return n;
}

int _myAnswer(List<int> nums) {
  nums.sort();
  int n = nums.last + 1;
  bool value = false;
  for (var i = 1; i < nums.length; i++) {
    if (nums[i] != nums[i - 1] + 1) {
      n = nums[i - 1] + 1;
      value = true;
      break;
    }
  }
  if (!value) {
    if (nums.first != 0) {
      return 0;
    } else {
      return nums.last + 1;
    }
  }
  return n;
}
