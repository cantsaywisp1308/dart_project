import 'dart:io';
void main(List<String> args) {
  stdout.writeln('Enter a number');
  final input = stdin.readLineSync();
  final num = int.tryParse(input!);

  for(int i = 1 ; i <= num!; i++) {
    if(num % i == 0) {
      print(i);
    }
  }
}