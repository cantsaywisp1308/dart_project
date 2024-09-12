void main(List<String> args) {
  print(1.to(10));
  print(1.to(10, inclusice: false));
  print(10.to(1));
  print(10.to(1, inclusice: false));
  print(10.to(10));
  print(10.to(10, inclusice: false));
}

extension on int {
  Iterable<int> to(int end, {bool inclusice = true}) => end > this
      ? [for (var i = this; i < end; i++) i, if (inclusice) end]
      : [for (var i = this; i > end; i--) i, if (inclusice) end];
}
