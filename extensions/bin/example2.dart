void main(List<String> args) {
  print([1, 2, 3].sum);
  print([1.1, 2.2, 3.3].sum);
}

extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}
