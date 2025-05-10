import 'dart:io';

/// 35. Search Insert Position
void main(){
  List<int> items = stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();
  int target = int.parse(stdin.readLineSync()!);
  print(_myAnswer(items, target));

}

int _myAnswer(List<int> nums, int target){
  if (nums.first > target) {
    return 0;
  }
  if(nums.last < target){
    return nums.length;
  }
  int index = nums.indexWhere((e) => e== target);
  if(index != -1) {
    return index;
  }
  
  for (var i = 0; i < nums.length ; i++) {
    if(nums[i] > target){
      index = i;
      break;
    } 
  }
  return index;
}