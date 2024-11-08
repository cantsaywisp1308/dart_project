import 'dart:isolate';
import 'dart:async';
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
    final receivePort = ReceivePort();
    await Isolate.spawn(_sellTourIsolate, {
      'port': receivePort.sendPort,
      'agency': this as Agency,
      'tour': tour,
      'tourists': tourists
    });

    await for (final result in receivePort) {
      if (result is Agency) {
        Tourist touristSearch =
            tourists.firstWhere((tourist) => tourist.touristID == tour.guestID);
        print(
            "${(this as Agency).name} sold tour ${tour.tourID} to ${touristSearch.name}");
        (this as Agency).totalMoney +=
            (1 - touristSearch.reduce()) * tour.value;
        (this as Agency).allToursSold.add(tour);
        print("Agency money is now: ${(this as Agency).totalMoney}");
        receivePort.close();
      }
    }
  }

  void _sellTourIsolate(Map<String, dynamic> message) {
    final sendPort = message['port'] as SendPort;
    final agency = message['agency'];
    final tour = message['tour'] as Tour;
    final tourists = message['tourists'];

    Tourist touristSearch =
        tourists.firstWhere((tourist) => tourist.touristID == tour.guestID);
    print("${agency.name} sold tour ${tour.tourID} to ${touristSearch.name}");
    agency.totalMoney += (1 - touristSearch.reduce()) * tour.value;
    agency.allToursSold.add(tour);
    print("Agency money is now: ${agency.totalMoney}");

    sendPort.send(agency);
  }
}
