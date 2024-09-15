void main(List<String> args) {}

abstract class Thing {
  final String name;

  const Thing({required this.name});
}

class Person extends Thing {
  final int age;

  const Person({required String name, required this.age}) : super(name: name);
}

class Animal extends Thing {
  final String species;

  const Animal({required String name, required this.species})
      : super(name: name);
}

const Thing personThing = Person(name: 'Bar', age: 20);

const Thing animalThing = Animal(name: 'Bar', species: 'cat');
