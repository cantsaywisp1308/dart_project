void main(List<String> args) {
  int value = 20;
  final timesFour = value.timesFour;
  print(timesFour);

  String hello = 'Hello World!';
  print(hello.reversed);
}

extension on int {
  int get timesFour => this * 4;
}

extension on String {
  String get reversed => split('').reversed.join();
}
