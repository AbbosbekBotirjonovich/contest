import 'dart:io';

///28. Find the Index of the First Occurrence in a String
void main() {
  String haystack = stdin.readLineSync()!;
  String needle = stdin.readLineSync()!;
  print(_myAnswer(haystack, needle));
}

int _myAnswer(String haystack, String needle) {
  int index = haystack.indexOf(needle);
  
  return index;
}
