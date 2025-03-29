/// Given an integer array nums, return an array answer such that answer[i] is
/// equal to the product of all the elements of nums except nums[i].
///
/// You must write an algorithm that runs in O(n) time and without using the division operation.
///
/// https://leetcode.com/problems/product-of-array-except-self/
class ProductArrayExceptSelf {
  List<int> call(List<int> nums) {
    final response = List.filled(nums.length, 1);

    int left = 1;
    for (int i = 0; i < nums.length; i++) {
      response[i] *= left;
      left *= nums[i];
    }

    int right = 1;
    for (int i = nums.length - 1; i >= 0; i--) {
      response[i] *= right;
      right *= nums[i];
    }

    return response;
  }
}
