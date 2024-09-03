void main(List<String> args) {
  List<List<int>> list = [
    [10, 30, 20, 0],
    [0, 20, 30, 10],
    [30, 0, 10, 20],
    [20, 10, 0, 30]
  ];
  final arrayTester = ArrayTester();
  print(arrayTester.isLatin(list));
}

class ArrayTester {
  // List<List<int>> _arr2D;
  // int _c;

  // ArrayTester(this._arr2D, this._c);

  List<int> getColumn(List<List<int>> arr2D, int c) {
    List<int> result = [];
    for (int i = 0; i < arr2D.length; i++) {
      result.add(arr2D[1][c]);
    }
    return result;
  }

  bool hasAllValue(List<int> arr1, List<int> arr2) {
    arr1.sort();
    arr2.sort();
    return arr1 == arr2;
  }

  bool containsDuplicate(List<int> arr) {
    for (int i = 0; i < arr.length - 1; i++) {
      for (int j = i + 1; j < arr.length; j++) {
        if (arr[i] == arr[j]) {
          return true;
        }
      }
    }
    return false;
  }

  bool isLatin(List<List<int>> square) {
    if (containsDuplicate(square[0])) return false;
    for (int i = 0; i < square[0].length; i++) {
      if (hasAllValue(square[0], getColumn(square, i))) {
        return false;
      }
    }

    for (int i = 1; i < square[0].length; i++) {
      if (hasAllValue(square[0], square[i])) {
        return false;
      }
    }

    return true;
  }
}
