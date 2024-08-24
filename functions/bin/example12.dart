void main(List<String> args) {
  makeUppercase();
  makeUppercase('Foo');
  makeUppercase(null, 'doe');
  makeUppercase('Foo', 'Bar');
  //makeUppercase('doe', null); --> invalid since null is not allowed 
}

void makeUppercase([ //[] means optional values
  String? firstName,
  String lastName = 'Bar'
]) {
  print(firstName?.toUpperCase());
  print(lastName.toUpperCase());
}