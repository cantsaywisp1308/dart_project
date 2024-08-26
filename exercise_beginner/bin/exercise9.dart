import 'dart:io';
import 'dart:math';
void main(List<String> args) {
  do{
    stdout.write('Guess a number from 1 to 100: ');
    final player = int.tryParse(stdin.readLineSync()!);
    if(player! > 100 ?? player! < 0) {
      break;
    }
    var rng = Random();
    final computer = rng.nextInt(100);
    stdout.writeln('Player number is $player');
    stdout.writeln('Computer number is $computer');

    if(player == computer) {
      stdout.writeln('Excellent, you are correct');
    } else if((player - computer).abs() <=5) {
      stdout.writeln('you are nearly correct');
    } else {
      stdout.writeln('Wrong, dumb');
    }
  } while (true);
  
  
  
}


