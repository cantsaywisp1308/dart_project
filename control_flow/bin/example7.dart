import 'dart:io';

void main(List<String> args) {
  do{
    stdout.write('Enter your age or type "exit": ');
    final input = stdin.readLineSync();
    print(input);
    if(input == 'exit'){
      break;
    } else if ((input?.length ?? 0) == 0) {
      stdout.writeln('Invalid, try again! ');
      continue;
    }

    final age = int.tryParse(input!);
    if(age == null) {
      stdout.writeln('Invalid age! Try again! ');
      continue;
    }

    switch (age) {
      case 10:
        stdout.writeln('You are $age years old. Great!');
        break;
      case 20:
        stdout.writeln('You are $age years old. Young!');
        break;
      case 30:
        stdout.writeln('You are $age years old. Adult!');
        break;
      default:
        stdout.writeln('You are $age years old! ');
        break;
    }
  } while (true);
}