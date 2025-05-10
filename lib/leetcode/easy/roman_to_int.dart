import 'dart:io';

void main(){
  String s = stdin.readLineSync()!;
  int sum = 0;
  int n = 0;
  for (var i = s.length - 1; i >= 0; i--) {
    switch(s[i]){
      case 'I': n = 1; break;
      case 'V': n = 5; break;
      case 'X': n = 10; break;
      case 'L': n = 50; break;
      case 'C': n = 100; break;
      case 'D': n = 500; break;
      case 'M': n = 1000; break;
    }
    if(4 * n < sum) {
      sum -= n;
    }else{
      sum += n;
    }
  }
  print(sum);
}