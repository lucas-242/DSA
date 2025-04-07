import 'dart:math';

class Practice {
  int call(List<int> nums) {
    int profit = 0;
    int buyPrice = nums.first;

    for (int r = 1; r < nums.length; r++) {
      if (buyPrice > nums[r]) {
        buyPrice = nums[r];
      }
      profit = max(profit, nums[r] - buyPrice);
    }

    return profit;
  }
}
