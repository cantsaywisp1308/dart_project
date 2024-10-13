import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/core/constants.dart';
import 'package:flutter_youtube/pages/description_page.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box});

  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DescriptionPage(box: box);
        }));
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              const SizedBox(
                height: kDouble5,
              ),
              Image.asset(box.imagePath),
              Text(
                box.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text('Description of ${box.title} is here'),
              const SizedBox(
                height: kDouble10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
