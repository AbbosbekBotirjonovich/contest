import 'dart:io';

///387. First Unique Character in a String
void main() {
  String s = stdin.readLineSync()!;
  print(_myAnswer(s));
}

int _myAnswer(String s) {
  List<String> items = List.generate(
    26,
    (index) => String.fromCharCode(index + 97),
  );
  int uniqueIndex = -1;
  for (var i = 0; i < items.length; i++) {
    if (s.contains(items[i])) {
      s = s.replaceFirst(items[i], '-1');
      if (!s.contains(items[i])) {
        int index = s.indexOf('-1');
        if (index < uniqueIndex || uniqueIndex == -1) {
          uniqueIndex = index;
        }
      }
      s = s.replaceFirst('-1', items[i]);
    }
  }
  return uniqueIndex;
}
