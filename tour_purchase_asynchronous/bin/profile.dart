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

  Profile updateProfile(
      String newName, String newAddress, String newEmail, String newPhone) {
    name = newName;
    address = newAddress;
    email = newEmail;
    phone = newPhone;
    return this;
  }
}
