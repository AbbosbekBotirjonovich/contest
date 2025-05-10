import 'dart:io';

///575. Distribute Candies
void main() {
  List<int> candyType = stdin
      .readLineSync()!
      .split('')
      .map(
        (e) => int.parse(e),
      )
      .toList();
      print(_myAnswer(candyType));
}

int _myAnswer(List<int> candyType) {
  int count = candyType.length ~/ 2;
  var candyTypeUnique = candyType.toSet().toList();
  if (count < candyTypeUnique.length) {
    return count;
  } else {
    return candyTypeUnique.length;
  }
}
