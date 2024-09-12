void main(List<String> args) {
  print(AnimalTypes.cat.nameContainsUpperCaseLetters);
  print(AnimalTypes.dog.nameContainsUpperCaseLetters);
  print(AnimalTypes.goldFish.nameContainsUpperCaseLetters);
}

enum AnimalTypes {
  cat,
  dog,
  goldFish,
}

extension on Enum {
  bool get nameContainsUpperCaseLetters => name.contains(RegExp(r'[A-Z]'));
}
