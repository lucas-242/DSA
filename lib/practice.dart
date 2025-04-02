class Practice {
  List<List<int>> call(List<int> nums) {
    final response = List<List<int>>.empty(growable: true);
    nums.sort();

    //achar dois números que somados são iguais a diff
    for (int i = 0; i < nums.length; i++) {
      if (i > 0 && nums[i] == nums[i - 1]) {
        continue;
      }

      int k = i + 1;
      int j = nums.length - 1;

      while (k < j) {
        final sum = nums[i] + nums[k] + nums[j];

        if (sum > 0) {
          j--;
        } else if (sum < 0) {
          k++;
        } else {
          response.add([nums[i], nums[k], nums[j]]);

          k++;
          j--;
        }
      }
    }

    return response;
  }
}
