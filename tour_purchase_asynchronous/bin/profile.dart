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
    name = newName;
    address = newAddress;
    email = newEmail;
    phone = newPhone;
    return this;
  }
}
