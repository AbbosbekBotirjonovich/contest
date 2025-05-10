import 'dart:io';

///344. Reverse String
void main() {
  String s = stdin.readLineSync()!;
  _myAnswer(s.split(''));
}

void _myAnswer(List<String> s) {
  s.setRange(0, s.length, s.reversed);
}
