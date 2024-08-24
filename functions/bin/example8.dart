
void main(List<String> args) {
  //doSomethingWith(); --> invalid code
  doSomethingWith(name: 'Foo');
  //doSomethingWith(name: null); --> invalid code since String not String?
}

void doSomethingWith({required String name}) {
  print('Hello, $name');
}