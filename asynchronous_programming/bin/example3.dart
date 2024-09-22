void main(List<String> args) async {
  // final length = await calculateString(await getFullName());
  // print(length); --> okay

  final length = await getFullName().then((value) =>
      calculateString(value)); //getFullName() as value to then() function
  print(length);
}

Future<String> getFullName() => Future.delayed(
      const Duration(seconds: 1),
      () => 'John Doe',
    );

Future<int> calculateString(String value) =>
    Future.delayed(const Duration(seconds: 1), () => value.length);
