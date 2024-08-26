import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  var rng = Random();
  final computer = rng.nextInt(10000);
  List<int> compDig = toDigit(computer!);
  int cow = 0;
  int bull = 0;
  for (int i = 0; i < 4; i++) {
    stdout.write('type a digit for digit ${i + 1}: ');
    final digit = int.tryParse(stdin.readLineSync()!);
    if (digit == compDig[i]) {
      cow++;
    } else {
      bull++;
    }
    print('Cows: ${cow}');
    print('Bulls: ${bull}');
  }
  print(compDig);
}

List<int> toDigit(int number) {
  List<int> digits = [];
  digits.add(number ~/ 1000);
  number = number % 1000;
  digits.add(number ~/ 100);
  number = number % 100;
  digits.add(number ~/ 10);
  number = number % 10;
  digits.add(number);
  return digits;
}
