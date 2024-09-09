void main(List<String> args) {
  final dad = FamilyMemeber(name: 'Dad');
  final mom = FamilyMemeber(name: 'Mom');
  final family = dad + mom;
  print(family);
}

class FamilyMemeber {
  final String name;
  const FamilyMemeber({required this.name});

  @override
  String toString() => 'Family member = ${name}';
}

class Family {
  final List<FamilyMemeber> members;

  const Family({required this.members});

  @override
  String toString() => 'Family (memebers = ${members})';
}

extension ToFamily on FamilyMemeber {
  Family operator +(FamilyMemeber other) => Family(members: [this, other]);
}
