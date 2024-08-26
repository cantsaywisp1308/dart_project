import 'dart:io';
import 'dart:math';
void main(List<String> args) {
  const options = ['rock', 'paper', 'scissors'];
  stdout.write('What is your choice, type number: 1 - rock, 2 - paper or 3-scissors');
  final player = int.tryParse(stdin.readLineSync()!);
  var rng = Random();
  final computer = rng.nextInt(2);
  stdout.writeln('Player chose: ${options[player!]}');
  stdout.writeln('Computer chose: ${options[computer]}');
 
  if (player == 0 && computer == 1){
    stdout.write('Computer wins');
  } else if (player == 0 && computer == 2) {
    stdout.write('Player wins');
  } else if (player == 1 && computer ==2) {
    stdout.write('Computer wins');
  } else if (computer == 0 && player ==1) {
    stdout.write('Player wins');
  } else if (computer == 0 && player ==2) {
    stdout.write('Computer wins');
  } else if(computer == 1 && player ==2) {
    stdout.write('Player wins');
  } else {
    stdout.write('It is a draw');
  }


}