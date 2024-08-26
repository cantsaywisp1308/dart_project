void main(List<String> args) {
  final iterable = Iterable.generate(20, (i) => getName(i));
  print(iterable);
  for (final name in iterable.take(2)) {
    print(name);
  }
}

String getName(int i) {
  print('getName got called');
  return 'John #$i';
}
