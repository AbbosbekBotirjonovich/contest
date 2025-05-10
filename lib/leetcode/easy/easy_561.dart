import 'dart:io';

///561. Array Partition
void main() {
  List<int> nums =
      stdin.readLineSync()!.split('').map((e) => int.parse(e)).toList();
  print(_myAnswer(nums));
}

int _myAnswer(List<int> nums) {
  nums.sort();
  int sum = 0;
  for (var i = 0; i < nums.length; i += 2) {
    sum += nums[i];
  }
  return sum;
}
