import 'dart:async';
import 'dart:isolate';
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
      final receivePort = ReceivePort();
      await Isolate.spawn(_buyTourIsolate, {
        'port': receivePort.sendPort,
        'tourist': this as Tourist,
        'tour': tour
      });
      await for (final result in receivePort) {
        if (result is Tourist) {
          (this as Tourist).score += tour.placeName.score;
          (this as Tourist).tours.add(tour);
          receivePort.close();
        }
      }
    }
  }

  //private _
  //Stream/ Future
  //int[]
  //List
  //spread opeartor

  void _buyTourIsolate(Map<String, dynamic> message) {
    final sendPort = message['port'] as SendPort;
    final tourist = message['tourist'] as Tourist;
    final tour = message['tour'] as Tour;

    tourist.score += tour.placeName.score;
    tourist.tours.add(tour);

    sendPort.send(tourist);
  }
}
