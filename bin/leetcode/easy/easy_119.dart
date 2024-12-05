import 'dart:io';

///119. Pascal's Triangle II
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

List<int> _myAnswer(int n) {
  List<int> previousRow = [1, 1];

  for (var i = 1; i < n; i++) {
    List<int> currentRow = [];
    for (var i = 0; i <= previousRow.length; i++) {
      if (i == 0) {
        currentRow.add(1);
      } else if (i == previousRow.length) {
        currentRow.add(1);
      } else {
        currentRow.add(previousRow[i] + previousRow[i - 1]);
      }
    }
    previousRow = currentRow;
  }
  return previousRow;
}