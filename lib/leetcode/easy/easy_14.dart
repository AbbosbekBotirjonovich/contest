import 'dart:io';

void main() {
  List<String> strs = stdin.readLineSync()!.split(' ');
  print(_myAnswer(strs));
  print(_optimalAnswer(strs));
}

String _myAnswer(List<String> strs){
  if (strs.length == 1) {
    return strs[0];
  } else {
    String result = '';
    String str = strs[0];
    for (var i = 0; i < str.length; i++) {
      String newStr = str.substring(0, i + 1);
      List<String> newList = strs.where((e) {
        if(e.length < newStr.length){
          return false;
        }
        if(e.length == newStr.length){
          return e == newStr;
        }
        return e.substring(0,i+1) == newStr;
      }).toList();
      if(newList.length == strs.length){
        result = newStr;
      }else{
        break;
      }
    }
    return result;
  }
}

String _optimalAnswer(List<String> strs){
  if(strs.isEmpty) return '';
  if(strs.length == 1) return strs.first;
  String prefix = strs.first;

  for (var word in strs) {
    while(!word.startsWith(prefix)){
      prefix = prefix.substring(0,prefix.length - 1);
      if(prefix.isEmpty) return '';
    }
  }

  return prefix; 
}
