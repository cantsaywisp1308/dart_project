import 'package:flutter/material.dart';
import 'package:openknect_project/classes/profile.dart';
import 'package:openknect_project/pages/home_page.dart';
import 'package:openknect_project/pages/profile.dart';

class WidgetTreePage extends StatefulWidget {
  const WidgetTreePage({super.key});

  @override
  State<WidgetTreePage> createState() => _WidgetTreePageState();
}

class _WidgetTreePageState extends State<WidgetTreePage> {
  int currentPage = 0;

  List<Widget> pages = [
    HomePage(),
    ProfilePage(
      profile: Profile(
        name: 'James Hall',
        address: '123 Main St',
        phone: '3126190546',
        email: 'james@nytimes.com',
        accumulatedScore: 0,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentPage),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Check-in',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_2),
            label: 'Profile',
          ),
        ],
        selectedIndex: currentPage,
        onDestinationSelected: (int value) {
          setState(
            () {
              currentPage = value;
            },
          );
        },
      ),
    );
  }
}
