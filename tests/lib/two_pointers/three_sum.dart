import 'package:DSA/two_pointers/three_sum.dart';
import 'package:test/test.dart';

void main(List<String> args) {
  group('3Sum', () {
    test('[-1,0,1,2,-1,-4]', () {
      final response = ThreeSum().call([-1, 0, 1, 2, -1, -4]);
      expect(response, [
        [-1, -1, 2],
        [-1, 0, 1]
      ]);
    });

    test('[0,1,1]', () {
      final response = ThreeSum().call([0, 1, 1]);
      expect(response, []);
    });

    test('[0,0,0]', () {
      final response = ThreeSum().call([0, 0, 0]);
      expect(response, [
        [0, 0, 0]
      ]);
    });
  });
}
