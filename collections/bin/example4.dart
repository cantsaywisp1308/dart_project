void main(List<String> args) {
  final info = {
    'name': 'Foo',
    'age': 10,
  };
  print(info);
  print(info['name']);
  print(info['age']);
  print('--------------');
  print(info.keys);
  print(info.values);
  info.putIfAbsent('height', () => 190);
  print(info);
  info['height'] = 180;
  print(info);
  print('--------------');
  for (final entry in info.entries) {
    print(entry.key);
    print(entry.value);
  }

  if (info.containsKey('height')) {
    print('Height is ${info['height']}');
  } else {
    print('Height is not in the info');
  }
  print(info['weight']); //--> null as it is not in the info
}
