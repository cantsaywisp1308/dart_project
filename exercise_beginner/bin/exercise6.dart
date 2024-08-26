import 'dart:io';
void main(List<String> args) {
  stdout.writeln('Write a string here: ');
  final input = stdin.readLineSync()?.toLowerCase();
  final reversed = input?.split('').reversed.join('');

  if(input == reversed) {
    stdout.write('It is a palindrome! ');
  } else {
    stdout.write('It is not a palindrome! ');
  }
}