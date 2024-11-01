import 'package:flutter/material.dart';
import 'package:openknect_project/classes/profile.dart';
import 'package:openknect_project/pages/updateProfile_page.dart';

class ProfilePage extends StatelessWidget {
  final Profile profile;
  ProfilePage({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("images/trump_tower.jpg"),
            radius: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(profile.getName),
          ),
          ListTile(
            leading: const Icon(Icons.book_online_rounded),
            title: Text(profile.getAddress),
          ),
          ListTile(
            leading: const Icon(Icons.phone_android),
            title: Text(profile.phone),
          ),
          ListTile(
            leading: const Icon(Icons.email_outlined),
            title: Text(profile.email),
          ),
          ListTile(
            leading: const Icon(Icons.score_sharp),
            title: Text(profile.accumulatedScore.toString()),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              final updateProfile = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UpdateprofilePage(
                    profile: profile,
                  ),
                ),
              );
              if (updateProfile != null) {}
            },
            child: const Text("Update Profile"),
          ),
        ],
      ),
    );
  }
}
