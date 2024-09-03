void main(List<String> args) {
  const foo = Person(firstName: 'Foo', lastname: 'Bar');
  print(foo.fullName);
}

class Person {
  final String firstName;
  final String lastname;

  //String get fullName => '$firstName $lastname'; //-->ok
  String get fullName {
    print('get full name here: ');
    return '$firstName $lastname';
  }

  const Person({required this.firstName, required this.lastname});
}

// class Person {
//   final String firstName;
//   final String lastname;

//   final String fullName;

//   const Person({required this.firstName, required this.lastname})
//       : fullName = '$firstName $lastname';
// }
