import 'dart:io';

///290. Word Pattern
void main() {
  String pattern = stdin.readLineSync()!;
  String s = stdin.readLineSync()!;
  print(_myAnswer(pattern, s));
}

bool _myAnswer(String pattern, String s) {
  var items = s.split(' ').toSet();
  var items2 = pattern.split('').toSet();
  if (items.length != items2.length) {
    return false;
  }
  Map<String, String> values = {};
  for (int i = 0; i < items.length; i++) {
    values[items2.toList()[i]] = items.toList()[i];
  }
  String newS = '';
  for (var i = 0; i < pattern.length; i++) {
    newS += "${values[pattern[i]]} ";
  }
  return newS.contains(s);
}
