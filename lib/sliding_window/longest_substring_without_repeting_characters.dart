import 'dart:math';

class LongestSubstringWithoutRepetingCharacters {
  int call(String s) {
    int left = 0;
    int maxLength = 0;

    ///char / quantity
    final map = <String, int>{};

    for (int right = 0; right < s.length; right++) {
      final current = s[right];
      map[current] = (map[current] ?? 0) + 1;

      while (map[current]! > 1) {
        final leftChar = s[left];
        map[leftChar] = map[leftChar]! - 1;
        left++;
      }

      final position = right - left + 1;
      maxLength = max(maxLength, position);
    }

    return maxLength;
  }
}
