import 'profile.dart';
import 'tour.dart';

List<Tourist> tourists = [];

class Tourist extends Profile with TouristMixin {
  Tourist({
    required super.name,
    required super.address,
    required super.phone,
    required super.email,
    required this.touristID,
    required this.score,
    required this.tours,
  });

  String touristID;
  double score;
  final List<Tour> tours;

  double reduce() {
    // Simplified with a more readable discount calculation
    return (score >= 2000)
        ? 0.1
        : (score >= 1000)
            ? 0.05
            : 0.0;
  }
}

extension TouristExtension on Tourist {
  void printInfo() {
    print(touristID);
    print(name);
    print(address);
    print(phone);
    print(email);
    print("Reduced rate: ${reduce()}");
  }
}

mixin TouristMixin {
  Future<void> buyTour(Tour tour) async {
    if (this is Tourist) {
      (this as Tourist).score += tour.placeName.score;
      (this as Tourist).tours.add(tour);
    }
  }
}