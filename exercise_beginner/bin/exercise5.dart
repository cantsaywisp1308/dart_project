void main(List<String> args) {
  const a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  const b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  Set<int> c = {};
  for(int i in a) {
    for (int j in b) {
      if ( i == j) {
        c.add(i);
      }
    }
  }
  print(c);
}