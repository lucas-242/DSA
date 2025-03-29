/// Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]]
/// such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.
///
/// Notice that the solution set must not contain duplicate triplets.
///
/// 3 <= nums.length <= 3000
class ThreeSum {
  List<List<int>> call(List<int> nums) {
    final response = <List<int>>[];
    nums.sort();

    for (var i = 0; i < nums.length; i++) {
      if (i > 0 && nums[i] == nums[i - 1]) {
        continue;
      }

      int left = i + 1;
      int right = nums.length - 1;

      while (left < right) {
        int sum = nums[i] + nums[left] + nums[right];

        if (sum > 0) {
          right--;
        } else if (sum < 0) {
          left++;
        } else {
          response.add([nums[i], nums[left], nums[right]]);
          left++;

          while (nums[left] == nums[left - 1] && left < right) {
            left++;
          }
        }
      }
    }

    return response;
  }
}
