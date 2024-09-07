void main(List<String> args) {
  final person = Person();
  person.jump(speed: 10.0);
  person.walk(speed: 5.0);
}

mixin HasSpeed {
  abstract double speed;
}

mixin canJump on HasSpeed {
  void jump({
    required double speed,
  }) {
    print('$runtimeType is jumping at the speed of $speed');
    this.speed = speed; //this.speed is the HasSpeed mixin
  }
}

mixin canWalk on HasSpeed {
  void walk({
    required double speed,
  }) {
    print('$runtimeType is walking at the speed of $speed');
    this.speed = speed; //this.speed is the HasSpeed mixin
  }
}

class Person with HasSpeed, canJump, canWalk {
  @override
  double speed = 0.0;
}
