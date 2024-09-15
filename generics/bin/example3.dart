void main(List<String> args) {
  const momAndDad = {'mom': Person(), 'dad': Person()};
  const brotherAndSisterAndMyFish = {
    'brother': Person(),
    'sister': Person(),
    'Fishy': Fish()
  };

  final allValues = [momAndDad, brotherAndSisterAndMyFish];

  describe(allValues);
}

typedef BreathingThings<T extends canBreath> = Map<String, T>;

void describe(Iterable<BreathingThings> values) {
  for (final map in values) {
    for (final keyAndValue in map.entries) {
      print('Will call breath() on ${keyAndValue.key}');
      keyAndValue.value.breathe();
    }
  }
}

mixin canBreath {
  void breathe();
}

class Person with canBreath {
  const Person();

  @override
  void breathe() {
    print('Person is breathing');
  }
}

class Fish with canBreath {
  const Fish();
  @override
  void breathe() {
    print('Fish is breathing');
  }
}
