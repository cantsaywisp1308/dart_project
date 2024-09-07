void main(List<String> args) {
  List<int> list = [7, 10, 4, 3, 15, 20];
  print(quickSort(list));
}

List<int> quickSort(List<int> list) {
  if (list.length <= 1) return list;

  int pivot = list[list.length ~/ 2];

  List<int> less = [];
  List<int> equal = [];
  List<int> greater = [];
  for (int i = 0; i < list.length; i++) {
    if (list[i] < pivot) {
      less.add(list[i]);
    } else if (list[i] == pivot) {
      equal.add(list[i]);
    } else {
      greater.add(list[i]);
    }
  }

  return [...quickSort(less), ...equal, ...quickSort(greater)];
}
