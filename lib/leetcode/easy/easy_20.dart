import 'dart:io';

void main() {
  String s = stdin.readLineSync()!;
  print(_optimalAnswer(s));
  print(_myAnswer(s));
}

bool _optimalAnswer(String s) {
  String before = s;
  s = s.replaceAll('{}', '');
  s = s.replaceAll('[]', '');
  s = s.replaceAll('()', '');
  if (s != before) {
   return _optimalAnswer(s);
  }
  return s.isEmpty;
}

bool _myAnswer(String s) {
  if (s.length % 2 != 0) return false;
  List<String> items = s.split('');
  for (int i = 1; i < items.length; i++) {
    switch (items[i]) {
      case ')':
        if (i - 1 > -1 && items[i - 1] == '(') {
          items.removeAt(i);
          items.removeAt(i - 1);
          i -= 2;
          break;
        } else {
          return false;
        }
      case '}':
        if (i - 1 > -1 && items[i - 1] == '{') {
          items.removeAt(i);
          items.removeAt(i - 1);
          i -= 2;
          break;
        } else {
          return false;
        }
      case ']':
        if (i - 1 > -1 && items[i - 1] == '[') {
          items.removeAt(i);
          items.removeAt(i - 1);
          i -= 2;
          break;
        } else {
          return false;
        }
    }
  }
  return items.isEmpty;
}
