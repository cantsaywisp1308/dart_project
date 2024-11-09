import 'dart:isolate';
import 'place.dart';
import 'tourist.dart';
import 'tour.dart';
import 'agency.dart';

List<Place> places = [];

void main() async {
  Place newYork = Place(
      name: 'New York',
      address: 'United States',
      description: 'Best city in the East',
      score: 120);

  places.add(newYork);

  Place seattle = Place(
      name: 'Seattle',
      address: 'Washington State',
      description: 'Best city in the West',
      score: 100);
  places.add(seattle);

  Place atalnta = Place(
      name: 'Atlanta',
      address: 'Georgia State',
      description: 'A good city in the West',
      score: 140);

  places.add(atalnta);

  for (Place place in places) {
    print("Info for ${place.name}:");
    await for (var info in place.printPlaceInfo()) {
      print(info); // Prints each piece of place information asynchronously
    }
    print(""); // Separate places by a blank line
  }
  places - ("Atlanta");

  print("Atlanta has been remove");
  for (Place place in places) {
    print("Info for ${place.name}:");
    await for (var info in place.printPlaceInfo()) {
      print(info); // Prints each piece of place information asynchronously
    }
    print(""); // Separate places by a blank line
  }

  //print(places);

  Tourist jamesHall = Tourist(
    touristID: "tourist_123",
    name: 'James Hall',
    address: 'Las Vegas, NV',
    phone: "5551110000",
    email: 'jh@nytimes.com',
    score: 0,
    tours: [],
  );

  Tourist mimiAngelito = Tourist(
    touristID: "tourist_124",
    name: 'Mimi Angelito',
    address: 'Los Angeles, CA',
    phone: "5551110001",
    email: 'mimi@latimes.com',
    score: 0,
    tours: [],
  );
  tourists.add(mimiAngelito);
  tourists.add(jamesHall);

  Agency agencyA = Agency(
    agencyID: "agen_123",
    name: "AgencyA",
    address: "San Jose, CA",
    phone: '3126190546',
    email: "email@email.com",
    totalMoney: 100,
    allToursSold: [],
  );

  Tour tourToNewYork = Tour(
    newYork,
    mimiAngelito.touristID,
    500.0,
    DateTime.now(),
    DateTime.now().add(Duration(days: 5)),
    tourID: "NYC_123",
  );

  Tour tourToSeatle = Tour(
    seattle,
    jamesHall.touristID,
    400.0,
    DateTime.parse('2024-10-12'),
    DateTime.parse('2024-10-12').add(Duration(days: 5)),
    tourID: "SEA_012",
  );

  await jamesHall.buyTour(tourToSeatle);
  print("James Hall's score:  ${jamesHall.score}");
  print(
      "James Hall's tours: ${jamesHall.tours.map((tour) => tour.tourID).toList()}");

  await mimiAngelito.buyTour(tourToNewYork);
  print("Mimi's new score: ${mimiAngelito.score}");
  print(
      "Mimi's tours: ${mimiAngelito.tours.map((tour) => tour.tourID).toList()}");

  await agencyA.sellTour(tourToNewYork);

  await agencyA.sellTour(tourToSeatle);

  print(
      "All tours sold: ${agencyA.allToursSold.map((tour) => tour.tourID).toList()}");

  await mimiAngelito.updateProfile(
      "Mimi Kess", "Netherlands", "mimi@latimes.com", "5561231900");
  //print(mimi_Angelito.address);
  mimiAngelito.printInfo();
  print(mimiAngelito.totalSpend());
}

// Helper function to spawn an isolate and wait for the result
Future<void> _performInIsolate(
    void Function(Map<String, dynamic>) isolateFunction,
    Map<String, dynamic> message) async {
  final receivePort = ReceivePort();
  await Isolate.spawn(
      isolateFunction, {'port': receivePort.sendPort, ...message});

  await receivePort.first; // Wait for the isolate to finish processing
  receivePort.close();
}

extension ListTourExt on List<Place> {
  List<Place> operator +(Place place) {
    return [...this, place];
  }

  List<Place> operator -(String placeName) {
    this.removeWhere((place) => place.name == placeName);
    return this;
  }
}
