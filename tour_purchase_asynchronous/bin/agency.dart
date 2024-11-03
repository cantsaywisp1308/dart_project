import 'tourist.dart';
import 'tour.dart';
import 'profile.dart';

class Agency extends Profile with AgencyMixin {
  Agency({
    required super.name,
    required super.address,
    required super.phone,
    required super.email,
    required this.agencyID,
    required this.totalMoney,
    required this.allToursSold,
  });

  String agencyID;
  double totalMoney;
  List<Tour> allToursSold;
}

mixin AgencyMixin {
  Future<void> sellTour(Tour tour) async {
    if (this is Agency) {
      Tourist touristSearch =
          tourists.firstWhere((tourist) => tourist.touristID == tour.guestID);
      print(
          "${(this as Agency).name} sold tour ${tour.tourID} to ${touristSearch.name}");
      (this as Agency).totalMoney += (1 - touristSearch.reduce()) * tour.value;
      (this as Agency).allToursSold.add(tour);
      print("Agency money is now: ${(this as Agency).totalMoney}");
    }
  }
}
