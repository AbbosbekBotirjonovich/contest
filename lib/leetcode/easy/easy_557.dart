import 'dart:io';

///557. Reverse Words in a String III
void main() {
  String s = stdin.readLineSync()!;
  print(_myAnswer(s));
}

String _myAnswer(String s) {
  List<String> items = s.split(' ');
  StringBuffer repS = StringBuffer();
  for (var i = 0; i < items.length; i++) {
    StringBuffer rI = StringBuffer('');
    for (var j = items[i].length - 1; j >= 0; j--) {
      rI.write(items[i][j]);
    }
    if(i == items.length - 1){
    repS.write("$rI");
    }else{
    repS.write("$rI ");      
    }
  }
  return repS.toString();
}
