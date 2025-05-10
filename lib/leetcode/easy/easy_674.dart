///674. Longest Continuous Increasing Subsequence
void main(){

}

int _myAnswer(List<int> nums){
  int count = 1;
  int lastCount = count;
  for (var i = 1; i < nums.length; i++) {
    if(nums[i] > nums[i-1]){
      count ++;
    }else{
      if(count > lastCount){
        lastCount = count;
      }
      count = 1;
    }
  }
  return count > lastCount ? count : lastCount;
}