void main(List<String> args) {
  sayGoodbyeTo('Foo', 'Bar');
  sayGoodbyeTo('Baz', 'Bar');
}

void sayGoodbyeTo(String person, String anotherPerson){
  print('Goodbye, $person and $anotherPerson');
}