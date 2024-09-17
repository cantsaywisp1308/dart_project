void main(List<String> args) {
  try {
    print('A dog aged 11 is about to run...');
    Dog(age: 11, isTired: false).run();

    print('A tired dog is about to run');
    Dog(age: 2, isTired: true).run();
  } catch (e) {
    print(e);
  }
}

class Dog extends Animal {
  final bool isTired;
  Dog({required super.age, required this.isTired});

  @Throws([DogIsTooOldException, DogIsTooTiredException])
  //this function throws the following exceptions
  //if age > 10 --> DogIsTooOldException
  //if isTired --> DogIsTooTiredException
  @override
  void run() {
    if (age < 10) {
      throw const DogIsTooOldException();
    } else if (isTired) {
      throw const DogIsTooTiredException();
    } else {
      print('The dog is running');
    }
  }
}

class Throws<T> {
  final List<T> exceptions;
  const Throws(this.exceptions);
}

class DogIsTooOldException implements Exception {
  const DogIsTooOldException();
}

class DogIsTooTiredException implements Exception {
  const DogIsTooTiredException();
}

class Animal {
  final int age;

  Animal({required this.age});

  @Throws([UnimplementedError])
  void run() => throw UnimplementedError();
}
