void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  // for(var i = 0; i < names.length;i++){
  //   print(names[i]);
  // }

  for(final name in names){
    print(name);
  }

  print('--------------');

  for(final name in names){
    if(!name.startsWith('B')){
      print(name);
    }
  }

  print('--------------');

  for(final name in names){
    if(name.startsWith('B')){
      continue;
    }
    print(name);
  }

  print('--------------');
  for(final name in names){
    if(name.startsWith('B')){
      break;
    }
    print(name);
  }

  print('--------------');
  for(final name in names.reversed){
    print(name);
  }

  print('--------------');
  for(var i = 0; i < 10; i++){
    print(i);
  }
}

