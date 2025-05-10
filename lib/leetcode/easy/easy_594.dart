import 'dart:math';

///594. Longest Harmonious Subsequence
class Solution {
  int findLHS(List<int> nums) {
       Map<int, int> frequency = {};
  for (int num in nums) {
    frequency[num] = (frequency[num] ?? 0) + 1;
  }
  int maxLength = 0;
  for (int num in frequency.keys) {
    if (frequency.containsKey(num + 1)) {
      maxLength = max(maxLength, frequency[num]! + frequency[num + 1]!);
    }
  }
  return maxLength;

  }
}
///598
/*
  int x = m;
  int y = n;
  for (int i = 0; i < ops.length; i++) {
    x = min(ops[i].first, x);
    y = min(ops[i].last, y);
  }

  return x * y;
*/