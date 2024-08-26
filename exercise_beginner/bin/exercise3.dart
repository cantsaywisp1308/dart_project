void main(List<String> args) {
  const nums = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for(int i = 0; i < nums.length; i++) {
    if(nums[i] < 5) {
      print(nums[i]);
    }
  }
}