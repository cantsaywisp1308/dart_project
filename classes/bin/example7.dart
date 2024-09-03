void main(List<String> args) {
  //final foo = Person();
  //foo.name = 'Foo'; --> cannot be done when static is added
  //final bar = Person();
  //bar.name = 'Bar'; --> cannot be done when static is added
  //print(foo.name);
  //print(bar.name);

  // Person.name = 'Foo';
  // print(Person.name);
  // Person.name = 'Baz';
  // print(Person.name);

  print(Car.carInstantiated);
  Car(name: 'My Car');
  print(Car.carInstantiated);
  Car(name: 'Your car');
  print(Car.carInstantiated);
}

class Person {
  static String name = '';
}

class Car {
  static int _carInstantiated = 0;

  static int get carInstantiated => _carInstantiated;
  static void incrementCarInstantiated() => _carInstantiated++;

  final String name;
  Car({required String this.name}) {
    incrementCarInstantiated();
  }
}
