void main(List<String> args) {
  final johnDoe = Person(firstName: 'John', lastName: 'Doe');
  print(johnDoe.fullName);
}

String getFullName(HasFullName obj) => obj.fullName;

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  // TODO: implement firstName
  final String firstName;

  @override
  // TODO: implement lastName
  final String lastName;

  Person({required this.firstName, required this.lastName});
}
