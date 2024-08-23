void main(List<String> args) {
  final person = Person();

  //do not do this in real code, use nullable variables instead
  try{
    //print(person.fullName); // LateInitializationError: Field 'firstName' has not been initialized.
  } catch (e) {
    print(e);
  }

  person.firstName = 'Foo';
  person.lastName ='Bar';
  print(person.fullName);
}

class Person{

  late final String firstName;
  late final String lastName;
  late String fullName = '$firstName $lastName';
}