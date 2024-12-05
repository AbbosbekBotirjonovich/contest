import 'dart:io';

///228. Summary Ranges
void main() {
  List<int> n = stdin
      .readLineSync()!
      .split(' ')
      .map(
        (e) => int.parse(e),
      )
      .toList();
  print(_myAnswer(n));
}

List<String> _myAnswer(List<int> nums) {
  int index = 0;
  int counter = 0;
  List<String> result = [];

  while (index < nums.length) {
    bool isLast = index == nums.length - 1;
    bool nextValid = !isLast && nums[index] + 1 == nums[index + 1];

    if (nextValid) {
      counter++;
    } else {
      result.add(counter < 1
          ? '${nums[index]}'
          : '${nums[index - counter]}->${nums[index]}');
      counter = 0;
    }
    index++;
  }

  return result;
}
