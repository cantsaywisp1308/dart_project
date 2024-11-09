class Place {
  final String name;
  final String address;
  final String description;
  final double score;

  Place({
    required this.name,
    required this.address,
    required this.description,
    required this.score,
  });

  Stream<String> printPlaceInfo() async* {
    yield "Place name: $name";
    await Future.delayed(Duration(milliseconds: 200)); // Simulate async delay
    yield "Address: $address";
    await Future.delayed(Duration(milliseconds: 200));
    yield "Description: $description";
    await Future.delayed(Duration(milliseconds: 200));
    yield "Score: $score";
  }
}
