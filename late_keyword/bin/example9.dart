void main(List<String> args) {
  final johnDoe = Person(name: 'John Doe');
  final janeDoe = Person(name: 'Jane Doe');
  final doeFamily = WrongImplementationOfFamily(members: [johnDoe, janeDoe]);
  print(doeFamily);
  print(doeFamily.membersCount);

  final johnSmith = Person(name: 'John Smith');
  final janeSmith = Person(name: 'Jane Smith');
  final smithFamily = CorrectImplementationOfFamily(members: [johnSmith, janeSmith]);
  print(smithFamily);
  print(smithFamily.membersCount);
}

class Person {
  final String name;

  Person({required this.name});
}

class WrongImplementationOfFamily{
  final Iterable<Person> members;
  late int membersCount ;

  WrongImplementationOfFamily({required this.members}){
    membersCount = getMembersCount();
  }

  int getMembersCount(){
    print('Getting members count');
    return members.length;
  }
}


class CorrectImplementationOfFamily{
  final Iterable<Person> members;
  late int membersCount = getMembersCount();

  CorrectImplementationOfFamily({required this.members}){
    //membersCount = getMembersCount();
  }

  int getMembersCount(){
    print('Getting members count');
    return members.length;
  }
}