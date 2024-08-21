void main(List<String> args) {
  final myList = [1,2,3];
  //myList = [3,4,5]; Error: Can't assign to the final variable 'myList'.
  myList.add(4);
  print(myList);
}