import 'dart:io';

///434. Number of Segments in a String
void main() {
  String s = stdin.readLineSync()!;
  print(_myAnswer(s));
}

int _myAnswer(String s) {
  return (s.split(' ')..removeWhere((e) => e == ' ' || e == '')).length;
}

///441
/*
    int result = 0;
    for(int i = 1; n > 0; i++) {
        n -= i;
        if(n > -1) {
            result++;
        }
    }
    return result;
*/