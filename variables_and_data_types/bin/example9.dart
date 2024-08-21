void main(List<String> args) {
  const thisList = [1,2,3];
  final thatList = thisList;
  print(thisList);
  print(thatList);
  //const someList = thatList; Error: Not a constant expression. Only can be assigned to a const variable, const someList = thisList is okay
}