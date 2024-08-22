void main(List<String> args){
  // List<String?>? names = []; //both list and String type can be null
  // names.add('Foo');
  // names.add(null);
  // print(names); --> ['Foo', null]

  List<String?>? names;
  //names = null;
  //names?.add('Foo');
  //names?.add(null);
  print(names); // --> null

  final String? first = names?.first;
  print(first ?? 'No first name found');
  
  names = [];
  names.add('Baz');
  names.add(null);
  print(names);
  
  
  //List<String> name2 = [];
  //final fi = name2.first;
  //print(fi); //--> Unhandled exception: Bad state: No element

}