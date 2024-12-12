import 'dart:io';

///205. Isomorphic Strings
void main() {
  String s = stdin.readLineSync()!;
  String t = stdin.readLineSync()!;
  print(_myAnswer(s, t));
}

bool _myAnswer(String s, String t) {
  if(s.length!=t.length) return false;
    List<String> answers = t.split('').toList();
    int j = 0;
    Map<String,String> charMap = {};

    for(int i=0;i<s.length;i++){
        if(charMap.containsKey(s[i])&&j<answers.length){
            String match = charMap[s[i]]!;
            if(t[j]==match){
                j++;
            }else{
                return false;
            }
        }else if(!charMap.containsKey(s[i])&&j<t.length&&charMap.containsValue(t[j])){
            return false;
        }else if(j<answers.length){
            charMap[s[i]] = t[j];
            j++;
        }     
    }
    return true;
}
