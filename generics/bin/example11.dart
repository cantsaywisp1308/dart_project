void main(List<String> args) {
  final integers = [100, 5, 2];
  final doubles = [33.0, 3.0, 2.0];
  print(integers.reduce(divide));
  print(doubles.reduce(divide));
}

T divide<T extends num>(T lhs, T rhs) {
  if (lhs is int && rhs is int) {
    return lhs ~/ rhs as T;
  } else {
    return lhs / rhs as T;
  }
}
