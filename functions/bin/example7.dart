void main(List<String> args) {
  doSomethingWith();
  doSomethingWith(name: 'Foo');
}

void doSomethingWith({String name = 'Bar',}) {
  print('Hello, $name');
}