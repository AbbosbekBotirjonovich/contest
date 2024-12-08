import 'dart:io';

///283. Move Zeroes
void main() {
  List<int> nums =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  print(_myAnswer(nums));
}

List<int> _myAnswer(List<int> nums) {
  int count = nums.where((e) => e == 0).length;
  nums.removeWhere((e) => e == 0);
  for (var i = 0; i < count; i++) {
    nums.insert(nums.length, 0);
  }
  return nums;
}
