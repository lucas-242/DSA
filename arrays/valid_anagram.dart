/// Given two strings s and t, return true if t is an anagram of s, and false otherwise.
///
/// https://leetcode.com/problems/valid-anagram/
class ValidAnagram {
  bool call(String s, String t) {
    if (s.length != t.length) return false;

    final count = Map<String, int>();

    for (var i = 0; i < s.length; i++) {
      final char = s[i];
      if (count.containsKey(char)) {
        count[char] = count[char]! + 1;
      } else {
        count.addAll({char: 1});
      }
    }

    for (var i = 0; i < t.length; i++) {
      final char = t[i];
      if (count.containsKey(char)) {
        count[char] = count[char]! - 1;
        if (count[char] == 0) {
          count.remove(char);
        }
      } else {
        return false;
      }
    }

    if (count.isNotEmpty) return false;

    return true;
  }
}
