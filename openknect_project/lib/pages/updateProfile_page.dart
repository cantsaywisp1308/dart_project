import 'package:flutter/material.dart';
import 'package:openknect_project/classes/profile.dart';
import 'package:openknect_project/pages/profile.dart';

class UpdateprofilePage extends StatefulWidget {
  Profile profile;
  UpdateprofilePage({super.key, required this.profile});

  @override
  State<UpdateprofilePage> createState() => _UpdateprofilePageState();
}

class _UpdateprofilePageState extends State<UpdateprofilePage> {
  late TextEditingController _nameController;
  late TextEditingController _addressController;
  late TextEditingController _phoneController;
  late TextEditingController _emailController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController = TextEditingController(text: widget.profile.name);
    _addressController = TextEditingController(text: widget.profile.address);
    _phoneController = TextEditingController(text: widget.profile.phone);
    _emailController = TextEditingController(text: widget.profile.email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Profile"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: "Name"),
          ),
          TextField(
            controller: _addressController,
            decoration: const InputDecoration(labelText: "Address"),
          ),
          TextField(
            controller: _phoneController,
            decoration: const InputDecoration(labelText: "Phone"),
          ),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: "Email"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Profile updatedProfile = Profile(
                name: _nameController.text,
                address: _addressController.text,
                phone: _phoneController.text,
                email: _emailController.text,
                accumulatedScore:
                    widget.profile.accumulatedScore, // Keeping the score same
              );

              // Pop the updated profile back to the previous page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(profile: updatedProfile),
                ),
              );
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }
}
