void main(List<String> args) {
  print([1, 2, 3].containsDuplicatedValues);
  print([1, 2, 3, 1].containsDuplicatedValues);
  print(['Foo', 'Bar'].containsDuplicatedValues);
  print(['Foo', 'Bar', 'Foo'].containsDuplicatedValues);
}

extension on Iterable {
  bool get containsDuplicatedValues => toSet().length != length;
}
