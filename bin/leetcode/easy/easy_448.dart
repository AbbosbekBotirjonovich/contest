import 'dart:io';

void main() {
  List<int> nums = stdin
      .readLineSync()!
      .split('')
      .map(
        (e) => int.parse(e),
      )
      .toList();
  print(_myAnswer(nums));
}

List<int> _myAnswer(List<int> nums) {
  if (nums.length == 1) return [];
  nums.sort();
  int max = nums.length;
  nums = nums.toSet().toList();
  List<int> items = [];
  for (var i = 1; i <= max; i++) {
    if (!nums.contains(i)) {
      items.add(i);
    }
  }
  return items;
}
