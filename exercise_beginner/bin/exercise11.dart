void main(List<String> args) {
  List<int> list = [5, 10, 15, 20, 25];
  print(FirstAndLast(list));
}

List<int> FirstAndLast(List<int> list) {
  List<int> newList = [];
  newList.add(list.first);
  newList.add(list.last);
  return newList;
}
