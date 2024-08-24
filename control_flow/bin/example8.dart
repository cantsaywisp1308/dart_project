import 'dart:io';
void main(List<String> args) {
  do{
    stdout.write('Enter your name or type "exit": ');
    final input = stdin.readLineSync();
    print(input);
    if(input == 'exit'){
      break;
    } else if ((input?.length ?? 0) == 0) {
      stdout.writeln('Invalid, try again! ');
      continue;
    }

    

    switch (input?.toLowerCase()) {
      case 'john':
      case 'jane':
        stdout.writeln('You are $input. Nice name');
        break;
    }
  } while (true);
}