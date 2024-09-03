void main(List<String> args) {
  final mom1 = Mom();
  //final mom = Mom(role: Role.mom); --> wrong because Mom is already inherits
  final dad1 = Dad();
  print(mom1.role);
  print(dad1.role);
}

enum Role { mom, dad, son, daughter, grandpa, granma }

class Person {
  final Role role;
  const Person({required this.role});
}

class Mom extends Person {
  const Mom() : super(role: Role.mom);
}

class Dad extends Person {
  const Dad() : super(role: Role.dad);
}
