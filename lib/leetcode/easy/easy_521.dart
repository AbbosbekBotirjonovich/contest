import 'dart:io';

///521. Longest Uncommon Subsequence I
void main(){
  String a = stdin.readLineSync()!;
  String b = stdin.readLineSync()!;
  print(_myAnswer(a, b));
}

int _myAnswer(String a,String b){
      if(a == b) return -1;
    if(a.length > b.length) return a.length ;
    return b.length ;
}