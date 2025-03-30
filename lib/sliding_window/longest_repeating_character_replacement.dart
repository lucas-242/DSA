import 'dart:math';

/// You are given a string [s] and an integer [k]. You can choose any character
/// of the string and change it to any other uppercase English character.
/// You can perform this operation at most [k] times.
///
/// Return the length of the longest substring containing the same letter
/// you can get after performing the above operations.
///
/// https://leetcode.com/problems/longest-repeating-character-replacement/
class LongestRepeatingCharacterReplacement {
  int call(String s, int k) {
    /// char - frequency
    Map<String, int> freqs = {};
    int left = 0, response = 0, maxFreq = 0;

    for (int right = 0; right < s.length; right++) {
      final r = s[right];
      freqs.update(r, (f) => f + 1, ifAbsent: () => 1);
      maxFreq = max(maxFreq, freqs[r]!);

      while ((right - left + 1) - maxFreq > k) {
        freqs.update(s[left], (f) => f - 1);
        left++;
      }

      response = max(response, right - left + 1);
    }

    return response;
  }
}
