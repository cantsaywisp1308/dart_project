void main(List<String> args) {
  final jack = Person(name: 'Jack', age: 20);
  //Extension override
  print(ShortDescription(jack).description);
  print(LongDescription(jack).description);
}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
}

extension ShortDescription on Person {
  String get description => '$name $age';
}

extension LongDescription on Person {
  String get description => 'The name is $name and age is $age';
}
