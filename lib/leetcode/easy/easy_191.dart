import 'dart:io';

///191. Number of 1 Bits
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

int _myAnswer(int n) {
  List<String> bits = (n.toRadixString(2).split('').toList())
    ..removeWhere((e) => e == '0');
  return bits.length;
}
