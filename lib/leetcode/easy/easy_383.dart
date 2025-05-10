import 'dart:io';

///383. Ransom Note
void main() {
  String ransomNote = stdin.readLineSync()!;
  String magazine = stdin.readLineSync()!;
  print(_myAnswer(ransomNote, magazine));
}

bool _myAnswer(String ransomNote, String magazine) {
  if (magazine.contains(ransomNote)) return true;
  Map<String, int> countMap = {};
  for (var i = 0; i < ransomNote.length; i++) {
    if (countMap.containsKey(ransomNote[i])) {
      int count = countMap[ransomNote[i]] ?? 0;
      countMap[ransomNote[i]] = count + 1;
    } else {
      countMap[ransomNote[i]] = 1;
    }
  }
  List<String> keys = countMap.keys.toList();
  List<String> magazines = magazine.split('');
  for (var i = 0; i < keys.length; i++) {
    if (magazines.where((e) => e == keys[i]).length < (countMap[keys[i]]!)) {
      return false;
    }
  }
  return true;
}
