void main(List<String> args) {
  final whisker = Cat(age: 2);
  print(whisker.age);
  whisker.incrementAge();
  print(whisker.age);
}

mixin hasAge {
  abstract int age;
  void incrementAge() => age++;
}

class Cat with hasAge {
  @override
  int age = 0;

  Cat({required this.age});
}
