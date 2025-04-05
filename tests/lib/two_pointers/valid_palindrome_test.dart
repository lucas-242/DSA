import 'package:DSA/two_pointers/valid_palindrome.dart';
import 'package:test/test.dart';

void main() {
  group('Valid Palindrome', () {
    test('A man, a plan, a canal: Panama', () {
      final response = ValidPalindrome().call("A man, a plan, a canal: Panama");
      expect(response, true);
    });

    test('race a car', () {
      final response = ValidPalindrome().call('race a car');
      expect(response, false);
    });

    test(' ', () {
      final response = ValidPalindrome().call(' ');
      expect(response, true);
    });
  });
}
