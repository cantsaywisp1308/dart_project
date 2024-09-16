void main(List<String> args) {
  final board = [
    [1, 2, 0],
    [2, 1, 0],
    [2, 1, 2]
  ];
  List<List<int>> rows = [];
  for (int i = 0; i < 3; i++) {
    rows.add(board[i]);
  }

  List<List<int>> cols = [];
  for (int i = 0; i < 3; i++) {
    List<int> col = [];
    for (int j = 0; j < 3; j++) {
      col.add(board[j][i]);
    }
    cols.add(col);
  }

  List<int> mainDiagon = [];
  for (int i = 0; i < 3; i++) {
    mainDiagon.add(board[i][i]);
  }

  List<int> secondDiagon = [];
  for (int i = 0; i < 3; i++) {
    secondDiagon.add(board[i][3 - i - 1]);
  }

  if (checkArrays(rows) ||
      checkArrays(cols) ||
      checkArray(mainDiagon) ||
      checkArray(secondDiagon)) {
    print('There is a winner');
  } else {
    print('No winner');
  }
}

bool checkArray(List<int> array) {
  bool result = true;
  for (int i = 0; i < 2; i++) {
    if (array[i] != array[i + 1]) {
      result = false;
      break;
    }
  }
  return result;
}

bool checkArrays(List<List<int>> arrays) {
  for (int i = 0; i < arrays.length; i++) {
    if (checkArray(arrays[i]) == false) {
      return false;
      break;
    }
  }
  return true;
}

bool checkCol(List<int> col) {
  bool result = true;
  for (int i = 0; i < col.length - 1; i++) {
    if (col[i] != col[i + 1]) {
      result = false;
      break;
    }
  }
  return result;
}

bool checkDiagon(List<int> diagon) {
  bool result = true;
  for (int i = 0; i < diagon.length - 1; i++) {
    if (diagon[i] != diagon[i + 1]) {
      result = false;
      break;
    }
  }
  return result;
}
