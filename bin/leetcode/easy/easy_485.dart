import 'dart:io';

///485. Max Consecutive Ones
void main() {
  List<int> nums =
      stdin.readLineSync()!.split('').map((e) => int.parse(e)).toList();
  print(_myAnswer(nums));
  print(_optimalAnswer(nums));
}

int _optimalAnswer(List<int> nums) {
  int max = 0;
  int count = 0;
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] == 1) {
      ++count;
    } else {
      count = 0;
    }
    if (max < count) {
      max = count;
    }
  }
  return max;
}

int _myAnswer(List<int> nums) {
  if (nums.length == 1 && nums.first == 1) return 1;
  List<int> counts = [];
  int count = 0;
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] == 1) {
      count += 1;
      if (i == nums.length - 1) {
        counts.add(count);
      }
    } else {
      counts.add(count);
      count = 0;
    }
  }
  counts.sort();
  return counts.last;
}
