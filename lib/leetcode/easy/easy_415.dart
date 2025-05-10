import 'dart:io';

///415. Add Strings
void main() {
  String nums1 = stdin.readLineSync()!;
  String nums2 = stdin.readLineSync()!;
  print(_myAnswer(nums1, nums2));
}

String _myAnswer(String nums1, String nums2) {
  return (BigInt.parse(nums1) + BigInt.parse(nums2)).toString();
}
