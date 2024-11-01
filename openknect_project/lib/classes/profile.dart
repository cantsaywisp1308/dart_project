import 'package:openknect_project/pages/places.dart';

class Profile {
  String name;
  String address;
  String phone;
  String email;
  int accumulatedScore;

  Profile({
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
    required this.accumulatedScore,
  });

  String get getName => name;
  String get getAddress => address;
  set setScore(int value) {
    accumulatedScore = value;
  }
}

mixin Actions on Profile {
  void checkin(PlacesPage place) {
    accumulatedScore += place.score;
  }
}
