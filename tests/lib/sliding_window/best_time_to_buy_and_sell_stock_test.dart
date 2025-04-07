import 'package:DSA/sliding_window/best_time_to_buy_and_sell_stock.dart';
import 'package:test/test.dart';

void main() {
  group('Best Time to Buy and Sell Stock', () {
    test('Should return 5 to [7, 1, 5, 3, 6, 4]', () {
      final response = BestTimeToBuyAndSellStock().call([7, 1, 5, 3, 6, 4]);
      expect(response, 5);
    });

    test('Should return 0 to [7, 6, 4, 3, 1]', () {
      final response = BestTimeToBuyAndSellStock().call([7, 6, 4, 3, 1]);
      expect(response, 0);
    });
  });
}
