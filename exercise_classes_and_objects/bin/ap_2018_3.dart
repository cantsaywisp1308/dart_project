void main(List<String> args) {
  var sc1 = CodeWordChecker(5, 8, "\$");
  print(sc1.isValid("happy")); // true
  print(sc1.isValid("happy\$")); // false
  print(sc1.isValid("Code")); // false
  print(sc1.isValid("happyCode")); // false

  // Example 2
  var sc2 = CodeWordChecker.withoutBounds("pass");
  print(sc2.isValid("MyPass")); // true
  print(sc2.isValid("Mypassport")); // false
  print(sc2.isValid("happy")); // false
  print(sc2.isValid("1,000,000,000,000,000")); // false
}

class StringChecker {
  bool isValid(String str) {
    return true;
  }
}

class CodeWordChecker implements StringChecker {
  final int _min;
  final int _max;
  final String _forbiddenStr;

  // Public constructor with default values for min and max
  CodeWordChecker(int min, int max, String str)
      : _min = min,
        _max = max,
        _forbiddenStr = str;

  // Constructor with only the forbidden string; default min and max
  CodeWordChecker.withoutBounds(String str)
      : _min = 6,
        _max = 20,
        _forbiddenStr = str;

  // Method to check if the code word is valid
  @override
  bool isValid(String codeWord) {
    if (codeWord.length < _min || codeWord.length > _max) {
      return false;
    }
    if (codeWord.contains(_forbiddenStr)) {
      return false;
    }
    return true;
  }
}
