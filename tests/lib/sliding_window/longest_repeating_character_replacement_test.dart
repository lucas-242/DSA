import 'package:DSA/sliding_window/longest_repeating_character_replacement.dart';
import 'package:test/test.dart';

void main(List<String> args) {
  group('Longest Substring Without Repeting Characters', () {
    test('ABAB', () {
      final response = LongestRepeatingCharacterReplacement().call('ABAB', 2);
      expect(response, 4);
    });

    test('AABABBA', () {
      final response =
          LongestRepeatingCharacterReplacement().call('AABABBA', 1);
      expect(response, 4);
    });

    test('AAAA', () {
      final response = LongestRepeatingCharacterReplacement().call('AAAA', 0);
      expect(response, 4);
    });
  });
}
