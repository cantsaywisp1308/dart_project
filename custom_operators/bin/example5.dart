void main(List<String> args) {
  print([1, 2, 3] - [1, 2]);
  print([1, 2, 3] - [1, 2, 3]);
  print([1, 2, 3] - [3, 1, 2]);
  print(['Foo', 'Baz', 'Bar'] - ['Baz', 'Bar']);
}

extension Remove<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) =>
      this.where((element) => !other.contains(element));
}
