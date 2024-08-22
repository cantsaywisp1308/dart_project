void main(List<String> args) {
  String? lastName;

  void changeLastName() {
    lastName = 'Foo Bar';
  }

  changeLastName();

  final foo = lastName;
  //print(foo);

  if(foo?.contains('Bar') ?? false) {
    print('Last name contains Bar');
  }

  if(foo?.contains('Bar') == true) {
    print('Last name contains Bar');
  }

  
}