import 'dart:io';

///88. Merge Sorted Array
void main() {
  List<int> nums1 =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  int m = int.parse(stdin.readLineSync()!);
  List<int> nums2 =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  int n = int.parse(stdin.readLineSync()!);
  _myAnswer(nums1, m, nums2, n);
}

void _myAnswer(List<int> nums1, int m, List<int> nums2, int n) {
  nums1.removeRange(m, nums1.length);
  nums2.removeRange(n, nums2.length);
  nums1.addAll(nums2);
  nums1.sort();

  print(nums1);
}
