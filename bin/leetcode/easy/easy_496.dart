import 'dart:io';

///496. Next Greater Element I
void main() {
  List<int> nums1 = stdin
      .readLineSync()!
      .split('')
      .map(
        (e) => int.parse(e),
      )
      .toList();

  List<int> nums2 = stdin
      .readLineSync()!
      .split('')
      .map(
        (e) => int.parse(e),
      )
      .toList();
  print(_myAnswer(nums1, nums2));
}

/// my answer is optimal
List<int> _myAnswer(List<int> nums1, List<int> nums2) {
  List<int> nums = [];
  for (var i = 0; i < nums1.length; i++) {
    int nextMax = -1;
    int index = nums2.indexOf(nums1[i]);
    if (index != -1) {
      for (var i = index + 1; i < nums2.length; i++) {
        if (nums2[index] < nums2[i]) {
          nextMax = nums2[i];
          break;
        }
      }
      nums.add(nextMax);
    } else {
      nums.add(index);
    }
  }
  return nums;
}
