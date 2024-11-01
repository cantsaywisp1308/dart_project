import 'place.dart';

class Tour {
  final String tourID;
  final Place placeName;
  final String guestID;
  final double value;
  final DateTime departure;
  final DateTime end;

  Tour(
    this.placeName,
    this.guestID,
    this.value,
    this.departure,
    this.end, {
    required this.tourID,
  });
}
