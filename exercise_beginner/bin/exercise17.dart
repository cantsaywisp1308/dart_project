void main(List<String> args) {
  final board = [];
  for (int i = 0; i < 7; i++) {
    if (i % 2 == 0) {
      String row = '';
      for (int j = 0; j < 13; j++) {
        if (j % 4 == 0) {
          row += ' ';
        } else {
          row += '-';
        }
      }
      board.add(row);
    } else {
      String row = '';
      for (int j = 0; j < 13; j++) {
        if (j % 4 == 0) {
          row += '|';
        } else {
          row += ' ';
        }
      }
      board.add(row);
    }
  }

  for (int i = 0; i < board.length; i++) {
    print(board[i]);
  }
}
