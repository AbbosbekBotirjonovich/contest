import 'dart:io';

///482. License Key Formatting
void main() {
  String s = stdin.readLineSync()!;
  int k = int.parse(stdin.readLineSync()!);
  print(_myAnswer(s, k));
}

String _myAnswer(String s, int k) {
  s = s.replaceAll('-', '').toUpperCase();
  if (s.isEmpty) return s;
  StringBuffer item = StringBuffer();
  int i = 0;
  while (i < s.length) {
    if (s.length % k != 0 && i == 0) {
      item.write('${s.substring(0, s.length % k)}-');
      i += s.length % k;
    } else {
      item.write('${s.substring(i, i + k)}-');
      i += k;
    }
  }
  return item.toString().substring(
        0,
        item.length - 1,
      );
}
