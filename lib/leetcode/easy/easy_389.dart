import 'dart:io';

///389. Find the Difference
void main() {
  String s = stdin.readLineSync()!;
  String t = stdin.readLineSync()!;
  print(_myAnswer(s, t));
}

String _myAnswer(String s, String t) {
  if (s.isEmpty) return t[0];
  List<String> itemsS = s.split('');
  List<String> itemsT = t.split('');
  List<String> items = List.generate(
    26,
    (index) => String.fromCharCode(index + 97),
  );
  for (var i = 0; i < items.length; i++) {
    int countS = itemsS.where((e) => e == items[i]).length;
    int countT = itemsT.where((e) => e == items[i]).length;
    if (countT != countS) {
      return items[i];
    }
  }
  return '';
}
