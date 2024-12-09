import 'dart:io';

///136. Single Number
void main() {
  List<int> nums =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  print(_myAnswer(nums));
  print(_optimalAnswer(nums));
}

int _optimalAnswer(List<int> nums) {
  int x = 0;
  for (var i in nums) {
    x = x ^ i;
  }
  return x;
}

int _myAnswer(List<int> nums) {
  int result = 0;
  int count = 0;
  for (var i = 0; i < nums.length; i++) {
    count = 0;
    for (var j = 0; j < nums.length; j++) {
      if (nums[i] == nums[j]) {
        count++;
      }
    }
    if (count == 1) {
      return nums[i];
    }
  }
  return result;
}
