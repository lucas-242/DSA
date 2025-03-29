/// Given a 1-indexed array of integers numbers that is already sorted in
/// non-decreasing order, find two numbers such that they add up to a specific target number.
/// Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 <= numbers.length.
///
/// Return the indices of the two numbers, index1 and index2,
/// added by one as an integer array [index1, index2] of length 2.
class TwoSumII {
  List<int> call(List<int> numbers, int target) {
    final n = numbers.length;
    int left = 0;
    int right = n - 1;

    for (int i = 0; i < n; i++) {
      final sum = numbers[left] + numbers[right];

      if (sum == target) return [left + 1, right + 1];

      if (sum > target) {
        right -= 1;
      } else {
        left += 1;
      }
    }

    return [];
  }
}
