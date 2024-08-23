void main(List<String> args) {
  print('late fullName is being initialized');
  late final fullName = getFullName();
  //print('after');
  //print(fullName);
  final resolvedFullName = fullName;
  print('resolvedFullName = $resolvedFullName');
}

String getFullName(){
  print('getFullName() is called');
  return 'John Doe';
}