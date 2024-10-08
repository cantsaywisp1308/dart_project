void main(List<String> args) {
  //late String name = provideName();
  //name = 'Foo Bar';
  final person = Person();
  person.description = 'Description 1';
  print(person.description);
  person.description = 'Description 2';
  print(person.description);

  final woof = Dog();
  woof.description = 'Description 1';
  print(woof.description);

  try{
    woof.description = 'Description 2';
    print(woof.description); //Field 'description' has already been initialized.
  }catch (e) {
    print(e);
  }
}

class Person {
  late String description;
}

class Dog {
  late final String description;
}



String provideName() {
  print('Function is called');
  return 'Foo Bar';
}