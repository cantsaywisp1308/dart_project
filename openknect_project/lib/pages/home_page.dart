import 'package:flutter/material.dart';
import 'package:openknect_project/pages/places.dart';
import 'package:openknect_project/pages/profile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<PlacesPage> places = [
    const PlacesPage(
        name: 'Caesar Palace',
        address: 'Las Vegas',
        description: 'Best Hotel Palace in Vegas',
        imageAddress: "images/caesar_palace.jpg",
        score: 16),
    const PlacesPage(
        name: 'Trump Tower',
        address: 'Chicago, IL',
        description: 'Trump Tower in Chicago',
        imageAddress: "images/trump_tower.jpg",
        score: 14),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project OpenKnect'),
        backgroundColor: Colors.blue.shade300,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (BuildContext buildcontext, index) {},
      ),
    );
  }
}
