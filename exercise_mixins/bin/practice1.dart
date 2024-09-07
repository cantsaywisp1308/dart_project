void main(List<String> args) {}

mixin SharedBehavior {}

abstract class Person {
  final int _age;
  final String _name;

  Person(this._age, this._name);

  eat();
  sleep();
}

mixin Sketching {
  sketch(String message) {
    print(message);
  }
}

mixin Reading {
  dailyReading(String topic) {
    print('Daily reading on ${topic}');
  }
}

mixin Exercise {
  running(int mile) {
    print("Daily run of ${mile} mile(s)");
  }

  weightTraining(int weights) {
    print('Lifting ${weights} lbs');
  }
}

mixin Boxing {
  punch(int n) {
    print('Can punch $n punches');
  }
}

class Boxer extends Person {
  Boxer(super.age, super.name);

  @override
  eat() {
    // TODO: implement eat
    throw UnimplementedError();
  }

  @override
  sleep() {
    // TODO: implement sleep
    throw UnimplementedError();
  }
}

class Athlete extends Person with Exercise {
  Athlete(super.age, super.name);

  @override
  eat() {
    // TODO: implement eat
    throw UnimplementedError();
  }

  @override
  sleep() {
    // TODO: implement sleep
    throw UnimplementedError();
  }

  @override
  running(int mile) {
    // TODO: implement running
    return super.running(mile);
  }

  @override
  weightTraining(int weights) {
    // TODO: implement weightTraining
    return super.weightTraining(weights);
  }
}
