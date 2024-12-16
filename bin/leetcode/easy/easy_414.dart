import 'dart:io';

///414. Third Maximum Number
void main() {
  List<int> nums =
      stdin.readLineSync()!.split('').map((e) => int.parse(e)).toList();
  print(_myAnswer(nums));
}

int _myAnswer(List<int> nums) {
  nums.sort(); 
    var data = nums.toSet(); 
    int count = data.length;  
    if (data.length <= 2) { 
      return data.last; 
    } else {
      return data.elementAt(count - 3); 
    }
}
