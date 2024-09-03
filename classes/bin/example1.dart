void main(List<String> args) {
  final person1 = Person(name: 'John', age: 20);
  print(person1.name);
  print(person1.age);
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });
}
