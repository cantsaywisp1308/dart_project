void main(List<String> args) {
  print(Person(age: 10).ageRound);
  print(Person(age: 10.5).ageRound);
}

class Person<T extends num> {
  final T age;

  const Person({required this.age});

  int get ageRound => this.age.round();
}
