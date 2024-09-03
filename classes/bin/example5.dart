void main(List<String> args) {
  final myCar = Car();
  myCar.speed = 20;
  myCar.drive(speed: 20);
  print('Speed is ${myCar.speed} miles/h');
  myCar.drive(speed: 40);
  myCar.stop();
}

class Car {
  int speed = 0;

  void drive({
    required int speed,
  }) {
    this.speed = speed;
    print('Accelerating to $speed miles/h');
  }

  void stop() {
    speed = 0;
    print('Stopping...');
    print('Stopped');
  }
}
