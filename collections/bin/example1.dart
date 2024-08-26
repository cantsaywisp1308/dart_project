void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];
  for (final name in names) {
    print(name);
  }
  print('---------------');

  for (final name in names.reversed) {
    print(name);
  }
  print('-------------');
  if (names.contains('Bar')) {
    print('Bar is in the list');
  }
  for (final name in names.where((String name) => name.startsWith('B'))) {
    print(name);
  }

  print('-------------');
  print(names[0]);
  print(names[1]);
  print(names[2]);
  print(names[3]);

  print('-------------');
  names.sublist(2).forEach(print); //--> Baz Qux
  names.sublist(1, 3).forEach(print); //--> Bar Baz

  final ages = [10, 20, 30];
  ages[0] = 15;
  print(ages);
  ages.add(50);
  ages.add(60);
  print(ages);

  const names1 = ['foo', 'Bar', 'Baz', 'Qux'];
  const names2 = ['Foo', 'Bar', 'Baz', 'Qux'];
  if (names1 == names2) {
    print('Names1 and names2 are equal');
  } else {
    print('Names1 and names2 are not equal');
  }

  names.map((str) => str.toUpperCase()).forEach(print);
  names.map((str) => str.length).forEach(print);
  print('-------------');
  final numbers = [1, 2, 3];
  final sum = numbers.fold(
      0, (int previousValue, int thisValue) => previousValue + thisValue);
  print(sum);
  print('-------------');
  final totalLength =
      names.fold(0, (totalLength, str) => totalLength + str.length);
  print(totalLength);
  print('-------------');
  final result = names.fold('', (result, str) => result + str);
  print(result);
  print('-------------');
  final result1 =
      names.fold('', (result, str) => '$result ${str.toUpperCase()}');
  print(result1);
}
