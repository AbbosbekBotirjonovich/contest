import 'dart:io';

///58. Length of Last Word
void main() {
  String s = stdin.readLineSync()!;
  print(_myAnswer(s));
  print(_optimalAnswer(s));
}

int _optimalAnswer(String s){
  return s.trim().split(' ').last.length;
}

int _myAnswer(String s) {
  List<String> values = s.split(' ');
  int lastLength = 0;

  for (var e in values) {
    if(e.isNotEmpty){
      lastLength = e.length;
    }
  }

  return lastLength;
}
