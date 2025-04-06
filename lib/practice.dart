class Practice {
  List<List<int>> call(List<int> nums) {
    final response = <List<int>>[];

    nums.sort();

    //     i  k     j
    //[-4,-1,-1,0,1,2]

    for (int i = 0; i < nums.length; i++) {
      if (i > 0 && nums[i] == nums[i - 1]) {
        continue;
      }

      int k = i + 1;
      int j = nums.length - 1;

      while (k < j) {
        final sum = nums[i] + nums[k] + nums[j];

        if (sum > 0)
          j--;
        else if (sum < 0)
          k++;
        else {
          response.add([nums[i], nums[k], nums[j]]);
          k++;

          while (nums[k] == nums[k - 1] && k < j) {
            k++;
          }
        }
      }
    }

    return response;
  }
}
