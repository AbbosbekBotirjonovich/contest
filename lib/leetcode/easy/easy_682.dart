import 'dart:io';

void main() {
  var operations = stdin.readLineSync()!.split('');
  print(calPoints(operations));
}

int calPoints(List<String> operations) {
  List<int> values = [];
  for (var element in operations) {
    switch (element) {
      case 'D':
        int x = values.last;
        values.add(2 * x);
        break;
      case 'C':
        values.removeLast();
        break;
      case '+':
        int x = values.last;
        int y = values[values.length - 2];
        values.add(x + y);
        break;
      default:
        values.add(int.parse(element));
    }
  }
  return values.fold(0, (previos, current) => previos + current);
}
