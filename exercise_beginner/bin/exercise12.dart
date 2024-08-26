import 'dart:io';

void main(List<String> args) {
  stdout.writeln('Write a number of fibonacci chain: ');
  final number = int.tryParse(stdin.readLineSync()!);
  print(fibonacci(number));
}

List<int> fibonacci(final number) {
  if (number == 1) {
    return [0];
  } else if (number == 2) {
    return [0, 1];
  } else {
    List<int> list = [0, 1];
    for (int i = 3; i <= number; i++) {
      list.add(list[i - 3] + list[i - 2]);
    }
    return list;
  }
}
