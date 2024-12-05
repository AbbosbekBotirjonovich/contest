///Merge Two Sorted Lists
void main() {
  
}

List<int> _myAnswer(List<int> list1, List<int> list2) {
  List<int> result = [];
  result
    ..addAll(list1)
    ..addAll(list2);
  result.sort();
  return result;
}
