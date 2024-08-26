import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {'Foo', 'Bar', 'Baz', 'Qux'};
  names.add('Foo');
  print(names);
  print('---------------');
  final names2 = ['Foo', 'Bar', 'Baz', 'Foo'];
  final uniqueNames = {...names2}; //--> From List to Set
  print(uniqueNames);
  print('---------------');
  final foo1 = 'Foo';
  final foo2 = 'foo';
  print(foo1.hashCode);
  print(foo2.hashCode);
  print('---------------');
  const ages1 = {20, 30, 40};
  const ages2 = {20, 30, 40};
  if (ages1 == ages2) {
    print('Ages1 is equal to ages2');
  } else {
    print('Ages1 is not equal to ages2');
  }
  if (SetEquality().equals(ages1, ages2)) {
    print('Ages1 is equal to ages2');
  } else {
    print('Ages1 is not equal to ages2');
  }
}
