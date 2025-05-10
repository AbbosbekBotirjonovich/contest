import 'dart:io';

/// 349. Intersection of Two Arrays

void main() {
  List<int> nums1 =
      stdin.readLineSync()!.split(',').map((e) => int.parse(e)).toList();
  List<int> nums2 =
      stdin.readLineSync()!.split(',').map((e) => int.parse(e)).toList();
  print(_myAnswer(nums1, nums2));
  print(_myOptimalAnswer(nums1, nums2));
}

List<int> _myOptimalAnswer(List<int> nums1, List<int> nums2) {
  List<int> items = [];
  for (var e in nums2) {
    if (nums1.contains(e) && !items.contains(e)) {
      items.add(e);
    }
  }
  return items;
}

List<int> _myAnswer(List<int> nums1, List<int> nums2) {
  List<int> items = [];
  if (nums1.length > nums2.length) {
    for (var e in nums1) {
      if (nums2.contains(e)) {
        items.add(e);
      }
    }
  } else {
    for (var e in nums2) {
      if (nums1.contains(e)) {
        items.add(e);
      }
    }
  }
  return items.toSet().toList();
}
