void main() {
  //int a; Error: Non-nullable variable 'a' must be assigned before it can be used.
  int a = 20;
  print(a);

  String? lastName;
  print(lastName);
  //print(lastName.length); Error: Property 'length' cannot be accessed on 'String?' because it is potentially null. Try accessing using ?. instead.
  print(lastName?.length);

  String? nullName;
  print(nullName ?? 'Foo'); //--> Foo because null vs a defined one --> defined
  print(lastName ?? nullName ?? 'Bar');


}