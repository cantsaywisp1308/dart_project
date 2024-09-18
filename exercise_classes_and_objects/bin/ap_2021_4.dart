void main(List<String> args) {
  List<List<int>> array2D = [
    [2, 1, 0],
    [1, 3, 2],
    [0, 0, 0],
    [4, 5, 6]
  ];
  final arrayResizer = ArrayResizer(array2D);
  for (int i = 0; i < arrayResizer._array2D.length; i++) {
    print(arrayResizer.isNonZeroRow(arrayResizer._array2D, i));
  }

  print(arrayResizer.resize(arrayResizer._array2D));
}

class ArrayResizer {
  final List<List<int>> _array2D;

  ArrayResizer(this._array2D);

  bool isNonZeroRow(List<List<int>> array2D, int row) {
    for (int i = 0; i < array2D[row].length; i++) {
      if (array2D[row][i] == 0) {
        return false;
        break;
      }
    }
    return true;
  }

  int numNonZeroRows(List<List<int>> array2D) {
    int count = 0;
    for (int i = 0; i < array2D.length; i++) {
      if (isNonZeroRow(array2D, i)) {
        count++;
      }
    }
    return count;
  }

  List<List<int>> resize(List<List<int>> array2D) {
    List<List<int>> result = [];
    for (int i = 0; i < array2D.length; i++) {
      if (isNonZeroRow(array2D, i)) {
        result.add(array2D[i]);
      }
    }
    return result;
  }
}
