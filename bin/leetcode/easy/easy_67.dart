import 'dart:io';

///67. Add Binary
void main() {
  String a = stdin.readLineSync()!;
  String b = stdin.readLineSync()!;
  print(_myAnswer(a, b));
}

String _myAnswer(String a, String b) {
  return (BigInt.parse(a,radix: 2) + BigInt.parse(b,radix: 2)).toRadixString(2);
}
