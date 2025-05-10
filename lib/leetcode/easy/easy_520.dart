import 'dart:io';

///520. Detect Capital
void main() {
  String word = stdin.readLineSync()!;
  print(_myAnswer(word));
}

bool _myAnswer(String word) {
  if (word == word.toLowerCase() || word == word.toUpperCase()) {
    return true;
  }
  if(word[0] == word[0].toUpperCase()){
    String newWord = word.substring(1,word.length);
    print(newWord);
    print(newWord.toUpperCase());
    return newWord == newWord.toUpperCase() || newWord == newWord.toLowerCase();
  }else{
    return false;
  }
}
