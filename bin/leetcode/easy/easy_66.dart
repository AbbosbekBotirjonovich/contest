import 'dart:io';

///66. Plus One
void main() {
  List<int> digits =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  print(_myAnswer(digits));
  print(_myOptimalAnswer(digits));
}

List<int> _myOptimalAnswer(List<int> digits) {
  int count = 0;

  for (var i = digits.length - 1; i >= 0; i--) {
    if (i == digits.length - 1) {
      digits[i] = digits[i] + 1;
    }else{
      digits[i] = digits[i] + count;
    }
    if (digits[i] >= 10) {
      digits[i] = digits[i] - 10;
      count = 1;
      if(i == 0){
        digits.insert(0,count);
      }
    }else{
      count = 0;
    }
  }
  return digits;
}

List<int> _myAnswer(List<int> digits) {
  var items = double.parse(digits.map((e) => e.toString()).join()) + 1;
  var newDigits = items
      .toString()
      .replaceAll('.0', '')
      .split('')
      .map((e) => int.parse(e))
      .toList();
  return newDigits;
}
