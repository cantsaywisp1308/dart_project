import 'package:flutter/material.dart';

class PlacesPage extends StatelessWidget {
  const PlacesPage({
    super.key,
    required this.name,
    required this.address,
    required this.description,
    required this.imageAddress,
    required this.score,
  });

  final String name;
  final String address;
  final String description;
  final String imageAddress;
  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Places"),
        backgroundColor: Colors.blue.shade400,
      ),
    );
  }
}
