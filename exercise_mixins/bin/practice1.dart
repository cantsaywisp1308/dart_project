void main(List<String> args) {
  print('Artist');
  Artist artist = Artist(20, 'Artist');
  artist.sketchLandscape();

  print("\nEngineer");
  Engineer engineer = Engineer(22, 'John');
  engineer.sketchBuilding();
  engineer.readResearchPapers();

  print("\nDoctor");
  Doctor doctor = Doctor(34, ' Kellie');
  doctor.readReports();
  doctor.workout();

  print("\nBoxer");
  Boxer boxer = Boxer(19, 'Jamal');
  boxer.punchIn();
  boxer.routineExercise();
}

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

class Boxer extends Athlete with Boxing {
  Boxer(super.age, super.name);

  punchIn() {
    punch(200);
  }

  void routineExercise() {
    running(4);
    weightTraining(40);
  }
}

class Athlete extends Person with Exercise {
  Athlete(super.age, super.name);

  @override
  eat() {
    print('An athlete is eating now');
  }

  @override
  sleep() {
    print('An athlete is sleeping now');
  }

  generalRoutine() {
    running(3);
    weightTraining(120);
  }
}

class Artist extends Person with Sketching {
  Artist(super.age, super.name);

  @override
  eat() {
    print('the artist is eating');
  }

  @override
  sleep() {
    print('the artist is sleeping');
  }

  sketchLandscape() {
    sketch("Making landscapes sketches");
  }
}

class Engineer extends Person with Sketching, Reading {
  Engineer(super.age, super.name);

  @override
  eat() {
    print('the engineer is eating');
  }

  @override
  sleep() {
    print('the engineer is sleeping');
  }

  readResearchPapers() {
    dailyReading("Building Construction");
  }

  sketchBuilding() {
    sketch("Sketching engineering drawings");
  }
}

class Doctor extends Person with Reading, Exercise {
  Doctor(super.age, super.name);

  @override
  eat() {
    print('the doctor is eating');
  }

  @override
  sleep() {
    print('the doctor is sleeping');
  }

  readReports() {
    String topic = "covid";
    dailyReading(topic);
  }

  workout() {
    running(12);
    weightTraining(110);
  }
}
