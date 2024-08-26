import 'dart:io';
void main(List<String> args) {
  stdout.writeln('Enter your name: ');
  final name = stdin.readLineSync();
  stdout.writeln('Enter your age: ');
  final input2 = stdin.readLineSync();
  int age = int.parse(input2!);
  final yearsTo100 = 100 - age;
  stdout.write('${name}, you have ${yearsTo100} years to be 100');
}