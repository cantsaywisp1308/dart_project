void main(List<String> args) {
  tryCreatingPerson(age: -1);
  tryCreatingPerson(age: 150);
  tryCreatingPerson(age: 45);
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } catch (e) {
    print(e.runtimeType);
    print(e);
  }
  print('-----------------');
}

class Person {
  final int age;

  Person({required this.age}) {
    if (age < 0) {
      throw Exception('Age cannot be negative');
    } else if (age > 140) {
      throw 'Age cannot be more than 140';
    }
  }
}
