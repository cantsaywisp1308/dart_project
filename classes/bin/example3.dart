void main(List<String> args) {
  const v = Vehicle(4);
  print(v);
  print(v.toString());
  print('-------------');
  print(Car());
  print(Bicycle());
}

class Vehicle {
  final int wheelChair;
  const Vehicle(this.wheelChair);

  @override
  String toString() {
    if (runtimeType == Vehicle) {
      return 'Vehicle with $wheelChair wheels';
    } else {
      return super.toString();
    }
  }
}

class Car extends Vehicle {
  //const Car() : super(4); //ok
  //const Car(super.wheelChair); //--> ok
  const Car() : super(4);
}

class Bicycle extends Vehicle {
  const Bicycle() : super(2);
}
