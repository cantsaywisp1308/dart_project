void main(List<String> args) {
  List<MemberInfo> members = [
    MemberInfo('SMITH, JANE', 2019, false),
    MemberInfo('FOX, STEVE', 2018, true),
    MemberInfo('XIN, MICHAEL', 2017, false),
    MemberInfo('GARCIA, MARIA', 2020, true)
  ];

  final names = ['DAVID, STENE', 'RUBEN, JAKOBS'];
  final clubMembers = ClubMembers(members);
  clubMembers.addMembers(names, 2021);
  //print(clubMembers.memberList.toString());
  print(clubMembers.remove(2018).toString());
}

class MemberInfo {
  final String _name;
  final int _gradYear;
  final bool _hasGoodStanding;

  MemberInfo(this._name, this._gradYear, this._hasGoodStanding);

  int get getGradYear => _gradYear;
  bool inGoodStanding() {
    return _hasGoodStanding;
  }

  @override
  String toString() =>
      'Name: $_name, gradYear: $_gradYear, goodStanding: $_hasGoodStanding';
}

class ClubMembers {
  final List<MemberInfo> _memberList;

  ClubMembers(this._memberList);

  List<MemberInfo> get memberList => _memberList;

  void addMembers(List<String> names, int gradYear) {
    for (String name in names) {
      _memberList.add(MemberInfo(name, gradYear, true));
    }
  }

  List<MemberInfo> remove(int year) {
    List<MemberInfo> gradStudent = [];
    for (int i = 0; i < _memberList.length; i++) {
      if (_memberList[i].getGradYear <= year) {
        if (_memberList[i].getGradYear == year) {
          gradStudent.add(_memberList[i]);
        }
        _memberList.removeAt(i);
      }
    }
    //print(_memberList.toString());
    return gradStudent;
  }
}
