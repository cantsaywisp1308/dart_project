import 'dart:io';
void main(List<String> args) {
  stdout.writeln('Enter a number: ');
  final input = stdin.readLineSync();
  final num = int.parse(input!);
  if(num %2 == 0) {
    stdout.writeln("This number is even! ");
  } else {
    stdout.writeln('This number is odd! ');
  }
}