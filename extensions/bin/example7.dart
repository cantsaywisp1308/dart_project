import 'dart:math';

void main(List<String> args) {
  print(add.callWithRandomValues());
  print(subtract.callWithRandomValues());
}

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;

typedef IntFunction = int Function(int, int);

extension on IntFunction {
  int callWithRandomValues() {
    int rnd1 = Random().nextInt(100);
    int rnd2 = Random().nextInt(100);
    print('Random 1 is $rnd1, Random 2 is $rnd2');
    return call(rnd1, rnd2);
  }
}
