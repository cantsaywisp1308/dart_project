void main(List<String> args) {
  Dog(isTired: false).run();

  try {
    Dog(isTired: true).run();
  } catch (e, stackTrace) {
    print(e);
    print(stackTrace);
  }
}

class DogIsTriedException implements Exception {
  final String message;

  DogIsTriedException([this.message = 'Poor doogo is tired']);
}

class Dog {
  final bool isTired;

  const Dog({required this.isTired});

  void run() {
    if (isTired) {
      throw DogIsTriedException('Poor doggo is tired');
    } else {
      print('Doggo is running');
    }
  }
}
