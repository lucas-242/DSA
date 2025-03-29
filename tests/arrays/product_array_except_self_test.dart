import 'package:test/test.dart';

import '../../arrays/product_array_except_self.dart';

void main(List<String> args) {
  test('[1,2,3,4]', () {
    final result = ProductArrayExceptSelf().call([1, 2, 3, 4]);
    expect(result, [24, 12, 8, 6]);
  });

  test('[-1,1,0,-3,3]', () {
    final result = ProductArrayExceptSelf().call([-1, 1, 0, -3, 3]);
    expect(result, [0, 0, 9, 0, 0]);
  });
}
