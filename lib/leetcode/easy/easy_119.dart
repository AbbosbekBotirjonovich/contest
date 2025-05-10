import 'dart:io';

///119. Pascal's Triangle II
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

List<int> _myAnswer(int rowIndex) {
  List<List<int>> items = [
    [1]
  ];
  for (var i = 0; i < rowIndex; i++) {
    List<int> currentRow = [];
    for (var j = 0; j <= items.last.length; j++) {
      if (j == 0) {
        currentRow.add(1);
      }
      if (j == items.last.length) {
        currentRow.add(1);
      }
      if (j != 0 && j != items.last.length) {
        currentRow.add(items.last[j] + items.last[j - 1]);
      }
    }
    items.add(currentRow);
  }
  return items[rowIndex];
}
