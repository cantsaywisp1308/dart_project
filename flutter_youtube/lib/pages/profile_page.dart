import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/constants.dart';
import 'package:flutter_youtube/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/cat.png'),
            radius: 60,
          ),
          SizedBox(
            height: kDouble10,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Flutter Mapp'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('k_trinhduy@u.pacific.edu'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('fluttermap.com'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDark, child) {
            if (!isDark) {
              return const Icon(Icons.dark_mode);
            } else {
              return const Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
