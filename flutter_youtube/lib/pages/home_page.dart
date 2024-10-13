import 'package:flutter/material.dart';
import 'package:flutter_youtube/widget/card_widget.dart';
import 'package:flutter_youtube/class/item_class.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Mapp'),

          backgroundColor: Colors.green.shade400,
          // leading: IconButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   icon: const Icon(Icons.dangerous)), --> Dont do this, since there is no page behind this
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardWidget(
                box: ItemClass(
                    title: 'Space Travel', imagePath: 'images/space.jpg'),
              ),
              Row(
                children: [
                  Expanded(
                    child: CardWidget(
                        box: ItemClass(
                            title: 'Globe Tracks',
                            imagePath: 'images/globe.jpg')),
                  ),
                  Expanded(
                    child: CardWidget(
                        box: ItemClass(
                            title: 'Take a photo',
                            imagePath: 'images/photograph.jpg')),
                  ),
                ],
              ),
              CardWidget(
                  box: ItemClass(
                      title: 'Welcome', imagePath: 'images/welcome.jpg')
                  // title: '',
                  // imagePath: '',
                  ),
            ],
          ),
        ));
  }
}
