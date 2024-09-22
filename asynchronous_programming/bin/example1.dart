void main(List<String> args) async {
  print(await getUserName());
  print(await getUserName1());
  print(await getAddress());
  print(await getPhoneNumber());
  print(await getCity());
  print(await getCountry());
  print(await getZipCode());
}

Future<String> getUserName() async {
  return 'John Doe';
}

Future<String> getUserName1() async => 'My name';
Future<String> getAddress() => Future.value('123 Wall St');

Future<String> getPhoneNumber() => Future<String>.delayed(
      const Duration(seconds: 1),
      () => '555-555-5555',
    );

Future<String> getCity() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'New York City';
}

Future<String> getCountry() async => 'India';

//async keyword doesnt really contribute anything
Future<String> getZipCode() async => Future.delayed(
      const Duration(seconds: 1),
      () => '12345',
    );
