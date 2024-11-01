import 'package:flutter/material.dart';
import 'package:openknect_project/pages/description_page.dart';
import 'package:openknect_project/pages/places.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.place,
  });

  final PlacesPage place;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(place: place);
            },
          ),
        );
      },
      child: Card(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset(place.imageAddress)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
