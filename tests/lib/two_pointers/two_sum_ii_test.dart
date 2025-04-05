import 'package:DSA/two_pointers/two_sum_ii.dart';
import 'package:test/test.dart';

void main() {
  group('Two Sum II', () {
    test('numbers = [2,7,11,15], target = 9', () {
      final response = TwoSumII().call([2, 7, 11, 15], 9);
      expect(response, [1, 2]);
    });

    test('numbers = [2,3,4], target = 6', () {
      final response = TwoSumII().call([2, 3, 4], 6);
      expect(response, [1, 3]);
    });

    test('numbers = [-1,0], target = -1', () {
      final response = TwoSumII().call([-1, 0], -1);
      expect(response, [1, 2]);
    });

    test('numbers = [-1, 0, 5, 7], target = 5', () {
      final response = TwoSumII().call([-1, 0, 5, 7], 5);
      expect(response, [2, 3]);
    });
  });
}
