import 'package:DSA/sliding_window/longest_substring_without_repeting_characters.dart';
import 'package:test/test.dart';

void main(List<String> args) {
  group('Longest Substring Without Repeting Characters', () {
    test('abcabcbb', () {
      final response =
          LongestSubstringWithoutRepetingCharacters().call('abcabcbb');
      expect(response, 3);
    });

    test('bbbbb', () {
      final response =
          LongestSubstringWithoutRepetingCharacters().call('bbbbb');
      expect(response, 1);
    });

    test('pwwkew', () {
      final response =
          LongestSubstringWithoutRepetingCharacters().call('pwwkew');
      expect(response, 3);
    });
  });
}
