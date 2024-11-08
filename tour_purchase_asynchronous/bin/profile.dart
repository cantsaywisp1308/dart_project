import 'dart:isolate';
import 'dart:async';

class Profile {
  String name;
  String address;
  String phone;
  String email;

  Profile({
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
  });

  Future<Profile> updateProfile(String newName, String newAddress,
      String newEmail, String newPhone) async {
    final receivePort = ReceivePort();
    await Isolate.spawn(_updateProfile, {
      'port': receivePort.sendPort,
      'profile': this,
      'newName': newName,
      'newAddress': newAddress,
      'newEmail': newEmail,
      'newPhone': newPhone,
    });

    final result = await receivePort.first as Profile;

    // Update the current instance with new values
    name = result.name;
    address = result.address;
    email = result.email;
    phone = result.phone;
    receivePort.close();
    return this;
  }

  void _updateProfile(Map<String, dynamic> message) {
    final sendPort = message['port'] as SendPort;
    final profile = message['profile'] as Profile;
    final newName = message['newName'] as String;
    final newAddress = message['newAddress'] as String;
    final newEmail = message['newEmail'] as String;
    final newPhone = message['newPhone'] as String;

    // Update profile fields within the isolate
    profile.name = newName;
    profile.address = newAddress;
    profile.email = newEmail;
    profile.phone = newPhone;

    sendPort.send(profile);
  }
}
