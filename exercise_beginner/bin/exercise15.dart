import 'dart:io';

void main(List<String> args) {
  print('Enter a password: ');
  final password = stdin.readLineSync();

  //print(password!.codeUnitAt(0));
  if (password!.contains(RegExp(r'[A-Z]')) &&
      password.contains(RegExp(r'[a-z]')) &&
      password.contains(RegExp(r'[0-9]')) &&
      password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]', unicode: true))) {
    print('Good password');
  } else {
    print('Bad password');
  }
}
