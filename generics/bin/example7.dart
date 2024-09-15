void main(List<String> args) {
  const tuple = Tuple(1, 20);
  print(tuple);
  final swapped = tuple.swap();
  print(swapped);

  const tuple1 = Tuple(1, 'one');
  print(tuple1);
  final tuple1Swapped = tuple1.swap1();
  print(tuple1Swapped);

  const tuple2 = Tuple(1, 20.2);
  final tuple2Swapped = tuple2.swap1();
  print(tuple2);
  print(tuple2.sum);
  print(tuple2Swapped);
}

class Tuple<L, R> {
  final L left;
  final R right;
  const Tuple(this.left, this.right);

  @override
  String toString() => 'Tuple left = $left, right = $right';
}

extension on Tuple {
  Tuple swap() => Tuple(right, left);
}

extension<L, R> on Tuple {
  Tuple<R, L> swap1() => Tuple(right, left);
}

extension<L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}
