void main(List<String> args) {
  final personName = personThing.mapIOfType(
        (Person p) => p.name,
      ) ??
      'Unknown person name';

  print(personName);

  final animalName = animalThing.mapIOfType(
        (Animal p) => p.name,
      ) ??
      'Unknown animal name';

  print(animalName);
}

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

const Thing animalThing = Animal(name: 'Foo', species: 'cat');

extension<T> on T {
  R? mapIOfType<E, R>(R Function(E) f) {
    final shadow = this;
    if (shadow is E) {
      return f(shadow);
    } else {
      return null;
    }
  }
}
