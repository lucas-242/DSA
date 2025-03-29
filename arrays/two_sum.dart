/// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
class TwoSum {
  List<int> call(List<int> nums, int target) {
    /// number, index
    final Map<int, int> map = {};

    for (int i = 0; i < nums.length; i++) {
      final int complement = target - nums[i];

      if (map.containsKey(complement)) {
        return [map[complement]!, i];
      }

      map[nums[i]] = i;
    }

    return [];
  }
}
