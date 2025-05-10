import 'dart:io';

///118. Pascal's Triangle
void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(_myAnswer(n));
}

List<List<int>> _myAnswer(int numRows) {
  List<List<int>> items = [
    [1]
  ];
  for (var i = 1; i < numRows; i++) {
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
  return items;
}
/*

                1
              1   1
            1   2   1
          1   3   3   1
        1   4   6   4   1
      1   5   10  10  5   1
    1   6  15   20  15  6   1

*/
