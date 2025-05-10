import 'dart:io';

/// 350. Intersection of Two Arrays II

void main() {
  List<int> nums1 =
      stdin.readLineSync()!.split(',').map((e) => int.parse(e)).toList();
  List<int> nums2 =
      stdin.readLineSync()!.split(',').map((e) => int.parse(e)).toList();
  print(_myOptimalAnswer(nums1, nums2));
}

List<int> _myOptimalAnswer(List<int> nums1, List<int> nums2) {
  List<int> items = [];
  for (var e in nums2) {
    if (nums1.contains(e)) {
      items.add(e);
      nums1.remove(e);
    }
  }
  return items;
}
