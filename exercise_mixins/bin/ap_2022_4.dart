import 'dart:math';

void main(List<String> args) async {
  Data data = Data(grid: [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ]);

  await data.repopulate();
  print(data.grid);
  print(await data.countIncreasingCols());
}

class Data with DataMixin {
  final int MAX = 100;
  final List<List<int>> grid;

  Data({required this.grid});
}

mixin DataMixin {
  Future<void> repopulate() async {
    final random = Random();
    for (int i = 0; i < (this as Data).grid.length; i++) {
      for (int j = 0; j < (this as Data).grid[i].length; j++) {
        int value = random.nextInt((this as Data).MAX);
        while (value % 10 != 0) {
          (this as Data).grid[i][j] = value * 10;
          break;
        }
      }
    }
  }

  Future<int> countIncreasingCols() async {
    int count = 0;
    for (int i = 0; i < (this as Data).grid[0].length; i++) {
      bool status = true;
      for (int j = 0; j < (this as Data).grid.length - 1; j++) {
        if ((this as Data).grid[j][i] >= (this as Data).grid[j + 1][i]) {
          status = false;
        }
      }
      if (status) {
        count++;
      }
    }
    return count;
  }
}
