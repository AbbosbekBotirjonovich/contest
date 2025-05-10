import 'dart:io';

///541. Reverse String II
void main(){
  String s = stdin.readLineSync()!;
  int k = int.parse(stdin.readLineSync()!);
  print(_myAnswer(s, k));
}

String _myAnswer(String s,int k){
        List<String> list = s.split('');
  for (int i = 0; i < list.length; i += 2 * k) {
    int end = (i + k < list.length) ? i + k : list.length;
    list.setRange(i, end, list.sublist(i, end).reversed);
  }
  return list.join('');
}