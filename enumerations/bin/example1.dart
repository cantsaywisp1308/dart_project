void main(List<String> args) {
  final woof = Animal(name: 'Wolf', type: AnimalType.dog);
  if (woof.type == AnimalType.dog) {
    print('Woof is a dog');
  } else {
    print('Woof is not a dog');
  }

  switch (woof.type) {
    case AnimalType.rabbit:
      print('This is a rabbit');
      break;
    case AnimalType.dog:
      print('This is a dog');
      break;
    case AnimalType.cat:
      print('This is a cat');
      break;
  }
}

enum AnimalType { rabbit, dog, cat }

class Animal {
  final String name;
  final AnimalType type;

  const Animal({required this.name, required this.type});
}
