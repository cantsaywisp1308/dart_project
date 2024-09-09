void main(List<String> args) {
  final dad = Person(name: 'John');
  final mom = Person(name: 'Jane');
  final son = Person(name: 'Jack');
  final daughter = Person(name: 'Jill');

  final whisker = Pet(name: 'Whisker');
  final family = dad + mom;
  print('Mom + Dad = $family');

  final withWhisker = family & whisker;
  print(withWhisker);

  final withSon = withWhisker + son;
  print(withSon);

  final withDaughter = withSon + daughter;
  print(withDaughter);
}

class Person {
  final String name;
  const Person({required this.name});

  @override
  String toString() => 'Person (name = $name)';
}

class Pet {
  final String name;
  const Pet({required this.name});

  @override
  String toString() => 'Pet (name = $name)';
}

class Family {
  final List<Person> members;
  final List<Pet> pets;

  const Family({required this.members, required this.pets});

  @override
  String toString() => 'Family (members = $members, pets = $pets)';
}

extension on Person {
  Family operator +(Person other) => Family(
        members: [this, other],
        pets: [],
      );

  Family operator &(Pet other) => Family(
        members: [this],
        pets: [other],
      );
}

extension on Family {
  Family operator &(Pet other) => Family(members: members, pets: [
        ...pets,
        other,
      ]);

  Family operator +(Person other) => Family(members: [
        ...members,
        other,
      ], pets: pets);

  Family operator ^(Family other) => Family(members: [
        ...members,
        ...other.members,
      ], pets: [
        ...pets,
        ...other.pets
      ]);
}
