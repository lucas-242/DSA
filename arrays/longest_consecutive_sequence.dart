import 'dart:math';

class LongestConsecutiveSequence {
  int call(List<int> nums) {
    final numSet = Set<int>.from(nums);
    int longest = 0;

    for (int current in numSet) {
      final previous = current - 1;

      if (numSet.contains(previous)) {
        continue;
      }

      int length = 1;

      while (numSet.contains(current + length)) {
        length++;
      }

      longest = max(longest, length);
    }

    return longest;
  }
}
