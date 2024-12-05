import 'dart:io';

/// Remove Duplicates from Sorted Array
void main() {
  List<int> items =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  print(_myAnswer(items));
  print(_optimalAnswer(items));
}

int _optimalAnswer(List<int> nums){
  var uniqSet = nums.toSet();
  nums.clear();
  nums.addAll(uniqSet);
  return nums.length;
}


int _myAnswer(List<int> nums) {
  if (nums.length == 1) return 1;
  List<int> uniqueIndex = [0];
  for (var i = 0; i < nums.length; i++) {
    if (nums[uniqueIndex.last] != nums[i]) {
      uniqueIndex.add(i);
    }
  }
  return uniqueIndex.length;
}
