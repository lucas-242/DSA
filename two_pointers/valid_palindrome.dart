class ValidPalindrome {
  // runtime type -> 9ms
  bool call(String s) {
    if (s.isEmpty) return true;

    final string = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

    int left = 0;
    int right = string.length - 1;

    while (left < right) {
      if (string[left] != string[right]) return false;

      left++;
      right--;
    }

    return true;
  }

  // runtime type -> 1ms
  bool solution2(String s) {
    if (s.isEmpty) return true;

    int left = 0;
    int right = s.length - 1;

    while (left < right) {
      final l = s.codeUnitAt(left);
      if (!_isAlphaNumeric(l)) {
        left++;
        continue;
      }

      final r = s.codeUnitAt(right);
      if (!_isAlphaNumeric(r)) {
        right--;
        continue;
      }

      if (l != r) return false;

      left++;
      right--;
    }

    return true;
  }

  bool _isAlphaNumeric(int value) {
    return (value >= 48 && value <= 57) ||
        (value >= 65 && value <= 90) ||
        (value >= 97 && value <= 122);
  }
}
