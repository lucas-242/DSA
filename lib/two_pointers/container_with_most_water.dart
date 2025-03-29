import 'dart:math';

/// You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).
///
/// Find two lines that together with the x-axis form a container, such that the container contains the most water.
///
/// Return the maximum amount of water a container can store.
///
/// https://leetcode.com/problems/container-with-most-water/
class ContainerWithMostwater {
  int call(List<int> height) {
    int response = 0;

    int left = 0;
    int right = height.length - 1;

    while (left < right) {
      final l = height[left];
      final r = height[right];
      final x = right - left;
      final y = min(l, r);
      final per = x * y;

      if (per > response) response = per;

      if (l < r) left++;
      if (r <= l) right--;
    }

    return response;
  }
}
